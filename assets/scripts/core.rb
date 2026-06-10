#!/usr/bin/ruby
require 'socket'
require 'open-uri'
require 'uri'
require 'optparse'

# For coloring help menu
module ANSI
  RED    = "\e[31m"
  GREEN  = "\e[32m"
  YELLOW = "\e[33m"
  RESET  = "\e[0m"
end

# Get name fo Distribution
def get_distribution_name
  # Try lsb_release first
  begin
    output = `lsb_release -is 2>/dev/null`.strip
    return output unless output.empty?
  rescue
    nil
  end
  
  # Fallback to reading release files
  if File.exist?('/etc/os-release')
    File.read('/etc/os-release').match(/PRETTY_NAME="([^"]+)"/)&.captures&.first
  else
    nil
  end
end

# Check if system is debian based
def debian_based?
  system("which apt > /dev/null 2>&1")
end

# check for internet connection
def connected?
  Socket.tcp("8.8.8.8", 53, connect_timeout: 2).close
  true
rescue Errno::ENETUNREACH, Errno::ETIMEDOUT, Errno::EHOSTUNREACH
  false
end

#- Perform system update
def sys_update
	system("sudo", "apt", "update")
	system("sudo", "apt", "upgrade", "-y")
	puts "\n✓ Update & upgrade complete"
end

# package cache cleaner
def broom 
	system("sudo", "apt", "clean")
	system("sudo", "apt", "autoclean")
	system("sudo", "apt", "autoremove")
	puts "\nCleaning Packages"
end

# logger
def log_error(message)
  puts message

  File.open("error.log", "a") do |file|
    file.puts message
  end
end

def download_files
  puts "Downloading dot files"
  dot_files = [
    "https://cis106.com/assets/scripts/bashrc",
    "https://cis106.com/assets/scripts/sysinfo.sh",
    "https://cis106.com/assets/scripts/bash_aliases"
  ]

  dot_files.each do |url|
    fname = url.split('/').last
    puts "Downloading: #{fname}"
    
    begin
      URI.open(url) do |remote_file|
        File.open(fname, "wb") do |local_file|
          local_file.write(remote_file.read)
        end
      end
    rescue OpenURI::HTTPError => e
      if e.message =~ /404/
        abort "failed to download #{fname} - file not found (404)"
      else
        abort "failed to download #{fname} - HTTP error: #{e.message}"
      end
    rescue SocketError,
           Errno::ECONNREFUSED,
           Errno::ENETUNREACH,
           Errno::EHOSTUNREACH,
           Net::OpenTimeout,
           Net::ReadTimeout,
           OpenSSL::SSL::SSLError
      abort "failed to download #{fname} - check internet connection"
    end
  end
end

def read_only?
	user_home = ENV['HOME']
	File.directory?(user_home) && !File.writable?(user_home)	
end

#- installing packages
def pkgs_install
	de = ENV['DESKTOP_SESSION']
	cli_pkgs = [
	  "pv", "git", "gcc", "vim", "tar", 
	  "curl", "make", "most", "perl", 
	  "tree", "wget", "bzip2", "samba",
	  "xclip", "boxes", "cowsay", "figlet",
	  "lolcat", "rsync", "snapd", "toilet",
	  "ntfs-3g", "cmatrix", "flatpak", "fortune",
	  "linuxlogo", "cpufetch", "exfat-fuse", 
	  "net-tools", "smbclient", "screenfetch",
	  "python3-pip", "build-essential", "fonts-symbola",
	  "fonts-recommended", "firmware-linux-free",
	  "firmware-linux-nonfree","firmware-misc-nonfree",
	  "mesa-utils", "xdg-utils", "wl-clipboard"
	]

	gui_pkgs = [
	  "vlc", "nemo", "geany", "tilix",
	  "caffeine", "flameshot", "chromium"
	]

	gnome_pkgs = [
	  "gnome-tweaks", "gnome-screenshot", 
	  "chrome-gnome-shell", "gnome-software-plugin-snap",
	  "gnome-software-plugin-flatpak", "gnome-shell-extension-manager"
	]


	if de.nil?
	  pkgs_list = cli_pkgs
	elsif de.upcase != "GNOME" 
	  pkgs_list = cli_pkgs + gui_pkgs
	else
	  pkgs_list = cli_pkgs + gui_pkgs + gnome_pkgs
	end
	
	sorted_pkgs = pkgs_list.sort_by(&:length)
	col_width = 30
	sorted_pkgs.each_slice(2) do |row|
	formatted = row.map { |s| s.ljust(col_width) }.join
		puts formatted
	end


	pkgs_list.each_with_index do |pkg,index|
	  print "[#{index + 1}/#{pkgs_list.length}] #{pkg}... "
	  unless system("sudo", "apt", "install", "-y", pkg) 
		message = "#{pkg} failed to install"
		log_error(message)
	  else
		puts "#{pkg} sucessfully installed!"
	  end
	 end

	puts "all done!"

end

#- Function to set aliases
def set_alias
	# File names
	old_aliases = ENV['HOME'] + "/" + ".bash_aliases"
	new_aliases = ENV['HOME'] + "/" + "bash_aliases"
	old_aliases_bk = "#{old_aliases}.bk_#{Time.now.to_i}"    
	# Abort if home is read only 
	abort "Home is read only." if read_only?  # added for redundancy
	# Check if the files are present. Ideal scenario
	if File.exist?(old_aliases) and File.exist?(new_aliases)
		# backup the files
		success = system("mv","-v", old_aliases, old_aliases_bk)
		abort "backup of bash_aliases failed" unless success
		# rename files
		success = system("mv", "-v", new_aliases, old_aliases)
		abort "rename of new_bash_aliases file faile" unless success
	# Check if neither exist. 
	elsif !File.exist?(old_aliases) and !File.exist?(new_aliases)
		abort "Something went wrong. #{old_aliases} or #{new_aliases} do not exist"
	# Check if old_aliases does not exist (possible in some minimal debian systems)
	elsif !File.exist?(old_aliases)
		puts "#{old_aliases} not found. Attempting rename now"
		# check if new_aliases is not present. If so abort
		if File.exist?(new_aliases)
			success = system("mv", "-v", new_aliases, old_aliases)
			abort "rename of new_aliases failed" unless success
		else
			abort "Something went wrong. #{new_aliases} do not exist"
		end
	elsif !File.exist?(new_aliases)
		abort "Something went wrong. #{new_aliases} do not exist"
	end
	
end 

#- Function to set minimal bashrc
def set_min_bashrc
	# file names
	old_bashrc = ENV['HOME'] + "/" +".bashrc"
	old_bashrc_bk = "#{old_bashrc}.bk_#{Time.now.to_i}"
	new_bashrc = ENV['HOME'] + "/" + "bashrc"
	sysinfo = ENV['HOME'] + "/" + ".sysinfo.sh"
	abort "Home is read only." if read_only? # added for redundancy
	
	# backup old bashrc
	# scenario 1: If both files exist 
	if File.exist?(old_bashrc) and File.exist?(new_bashrc)
		success = system("mv","-v", old_bashrc, old_bashrc_bk)  
		abort "Failed to create backup of bashrc file" unless success
		puts "Old bashrc file backed up to #{old_bashrc_bk}"
		success = system("mv","-v", new_bashrc, old_bashrc)  
		abort "Failed to rename bashrc file with new file" unless success
		
		if File.exist?("sysinfo.sh")
			success = system("mv","-v","sysinfo.sh", sysinfo)
			abort "sysinfo.sh could not be renamved. Check the file manually" unless success
		end
	# scenario 2: if old_bashrc does not exist
	elsif !File.exist?(old_bashrc) 
		abort "This system does not have a #{old_bashrc} file"
	# scenario 3: if new bashrc does not exist 
	elsif !File.exist?(new_bashrc)
		abort "#{new_bashrc} does not exist"
	end
	
end



#- Enable Flathub
def enable_flatpak
	puts "Adding Flathub repository to Flatpak..."
	system("sudo","flatpak", "remote-add", "--if-not-exists", "flathub", "https://dl.flathub.org/repo/flathub.flatpakrepo")
end

#- Help screen
def help_menu
	puts "#{ANSI::GREEN}" + "core.rb\n".upcase + "#{ANSI::RESET}"
	puts "#{ANSI::GREEN}" +"synopsis".upcase + "#{ANSI::RESET}"
	puts "\tcore.rb [OPTION]"
	puts "#{ANSI::GREEN}" +"\ndescription".upcase + "#{ANSI::RESET}"
	puts "\tA basic bash script to install necessary software that will be used during the semester."
	puts "\tThis script must be executed from user's home directory"
	puts "#{ANSI::GREEN}" +"\noptions".upcase + "#{ANSI::RESET}"
	puts "#{ANSI::RED}" + "\t-a" + "#{ANSI::RESET}"+"  Install all (essential software, bashrc, bash_aliases)"
	puts "#{ANSI::RED}" + "\t-i" + "#{ANSI::RESET}"+"  Install basic software (CLI software only - Debain Server)"
	puts "#{ANSI::RED}" + "\t-b" + "#{ANSI::RESET}"+"  Install bashrc and bash_aliases"
	puts "#{ANSI::RED}" + "\t-h" + "#{ANSI::RESET}"+"  Displays this help/man makeshift message"
	puts "#{ANSI::GREEN}" + "\nexamples".upcase + "#{ANSI::RESET}"
	puts "\t./core.rb -a"
	puts "\t./core.rb -i"
	puts "\t./core.rb -h"
end

#- Main
def main

	abort "This script has to be run from the users home directory" if ENV['PWD'] != ENV['HOME']

	distro = get_distribution_name
	de = ENV['DESKTOP_SESSION']
	abort "Error: This script requires an APT-based Linux distribution" unless debian_based?
	puts "OS\t#{distro}\nDE\t#{de}"
	abort "Error: No internet connection" unless connected?
	OptionParser.new do |opts|
		opts.banner = "Usage: ./core.rb [option]"
		opts.on("-a","-A","--all","--ALL","--install-all") do 
			puts "Sudo access required for this script"
			system("sudo -v")
			sys_update
			pkgs_install
			broom
			download_files
			set_alias
			set_min_bashrc
			enable_flatpak
		end
		opts.on("-i", "-I","--install") do
			puts "Sudo access required for this script"
			system("sudo -v")
			sys_update
			pkgs_install
			broom
			download_files	
			set_alias
			set_min_bashrc	
		end
		opts.on("-h", "-H","--help") do
			help_menu
		end
		opts.on("-b","-B","--bash-config") do
			abort "Error: No internet connection" unless connected?
			download_files
			set_alias
			set_min_bashrc
		end
		
	end.parse!

	puts "All done. Any error messages can be found in error.log"

end
main


