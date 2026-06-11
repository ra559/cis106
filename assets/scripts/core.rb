#!/usr/bin/ruby
require 'socket'
require 'open-uri'
require 'uri'
require 'optparse'
require "digest"


# For coloring help menu
module ANSI
  RED    = "\e[31m"
  GREEN  = "\e[32m"
  YELLOW = "\e[33m"
  RESET  = "\e[0m"
end

def warn_log(msg)
	puts "⚠️ - #{ANSI::YELLOW}#{msg}#{ANSI::RESET}"
end

def info_log(msg)
	puts "ℹ️ - #{ANSI::BLUE}#{msg}#{ANSI::RESET}"
end

def error_log(msg)
	puts "❌ - #{ANSI::RED}#{msg}#{ANSI::RESET}"
end

def success_log(msg)
	puts "✅ - #{ANSI::GREEN}#{msg}#{ANSI::RESET}"
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
	bash_aliases_hash = "f07182f137bc9597ec67669245563062b855ae6e36583dbc5f74c3fdef39ce854723460f295067fa1fed71b81b2bcc1aaa515dbb7b439890ff58c70050926e84"
	bashrc_hash = "17a6cd9489ad921efa8c81b2ee8a0944cd7721849e0ecdcc9a1775921b727c02c555529c63a82c6c9ed7d8fa404678bfa5f93f56e9c49719a07d7811818f73de"
	sysinfo_hash = "6491996ffeef20052303f8a8e0800179fb737896de625ccc478dd2654e1ee5a55485e4562dba6448bf4123cbc01269a7892a7ec1b30f87fc248c0b5bdf3aac2d"


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
  # Check integrity of files:
  bashrc_downloaded_hash = Digest::SHA512.file("bashrc").hexdigest
  abort "❌ - #{ANSI::RED}bashrc file integrity failed. DELETE bashrc file and try again#{ANSI::RESET}" if bashrc_downloaded_hash != bashrc_hash
  bash_aliases_downloaded_hash = Digest::SHA512.file("bash_aliases").hexdigest
  abort "❌ - #{ANSI::RED}bash_aliases file integrity failed. DELETE bash_aliases and try again#{ANSI::RESET}" if bash_aliases_downloaded_hash != bash_aliases_hash
  sysinfo_downloaded_hash = Digest::SHA512.file("sysinfo.sh").hexdigest
  abort "❌ - #{ANSI::RED}sysinfo.sh file integrity failed. DELETE sysinfo.sh and try again#{ANSI::RESET}" if sysinfo_downloaded_hash != sysinfo_hash
   
  
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
	  "gnome-software-plugin-flatpak", "gnome-shell-extension-manager",
	  "gnome-shell-extension-caffeine","gnome-shell-extension-dash-to-panel",
	  "gnome-shell-extension-system-monitor", "gnome-shell-extension-tiling-assistant"
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
		success_log("#{pkg} sucessfully installed!")
	  end
	 end

	success_log("all done!")

end

#- Function to set aliases
def set_alias
	# File names
	old_aliases = ENV['HOME'] + "/" + ".bash_aliases"
	new_aliases = ENV['HOME'] + "/" + "bash_aliases"
	old_aliases_bk = "#{old_aliases}.bk_#{Time.now.to_i}"    
	# Abort if home is read only 
	abort "❌ - #{ANSI::RED}Home is read only.#{ANSI::RESET}" if read_only?  # added for redundancy
	# Check if the files are present. Ideal scenario
	if File.exist?(old_aliases) and File.exist?(new_aliases)
		# backup the files
		success = system("mv","-v", old_aliases, old_aliases_bk)
		abort "❌ - #{ANSI::RED}backup of bash_aliases failed#{ANSI::RESET}" unless success
		# rename files
		success = system("mv", "-v", new_aliases, old_aliases)
		abort "❌ - #{ANSI::RED}rename of new_bash_aliases file faile#{ANSI::RESET}" unless success
	# Check if neither exist. 
	elsif !File.exist?(old_aliases) and !File.exist?(new_aliases)
		abort "❌ - #{ANSI::RED}Something went wrong. #{old_aliases} or #{new_aliases} do not exist#{ANSI::RESET}"
	# Check if old_aliases does not exist (possible in some minimal debian systems)
	elsif !File.exist?(old_aliases)
		error_log("#{old_aliases} not found. Attempting rename now")
		# check if new_aliases is not present. If so abort
		if File.exist?(new_aliases)
			success = system("mv", "-v", new_aliases, old_aliases)
			abort "❌ - #{ANSI::RED}rename of new_aliases failed#{ANSI::RESET}" unless success
		else
			abort "❌ - #{ANSI::RED}Something went wrong. #{new_aliases} do not exist#{ANSI::RESET}"
		end
	elsif !File.exist?(new_aliases)
		abort "❌ - #{ANSI::RED}Something went wrong. #{new_aliases} do not exist#{ANSI::RESET}"
	end
	
end 

#- Function to set minimal bashrc
def set_min_bashrc
	# file names
	old_bashrc = ENV['HOME'] + "/" +".bashrc"
	old_bashrc_bk = "#{old_bashrc}.bk_#{Time.now.to_i}"
	new_bashrc = ENV['HOME'] + "/" + "bashrc"
	sysinfo = ENV['HOME'] + "/" + ".sysinfo.sh"
	abort "❌ - #{ANSI::RED}Home is read only.#{ANSI::RESET}" if read_only? # added for redundancy
	
	# backup old bashrc
	# scenario 1: If both files exist 
	if File.exist?(old_bashrc) and File.exist?(new_bashrc)
		success = system("mv","-v", old_bashrc, old_bashrc_bk)  
		abort "❌ - #{ANSI::RED}Failed to create backup of bashrc file#{ANSI::RESET}" unless success
		info_log("Old bashrc file backed up to #{old_bashrc_bk}")
		success = system("mv","-v", new_bashrc, old_bashrc)  
		abort "❌ - #{ANSI::RED}Failed to rename bashrc file with new file#{ANSI::RESET}" unless success
		
		if File.exist?("sysinfo.sh")
			success = system("mv","-v","sysinfo.sh", sysinfo)
			abort "❌ - #{ANSI::RED}sysinfo.sh could not be renamved. Check the file manually#{ANSI::RESET}" unless success
		end
	# scenario 2: if old_bashrc does not exist
	elsif !File.exist?(old_bashrc) 
		abort "❌ - #{ANSI::RED}This system does not have a #{old_bashrc} file#{ANSI::RESET}"
	# scenario 3: if new bashrc does not exist 
	elsif !File.exist?(new_bashrc)
		abort "❌ - #{ANSI::RED}#{new_bashrc} does not exist#{ANSI::RESET}"
	end
	
end



#- Enable Flathub
def enable_flatpak
	info_log("Adding Flathub repository to Flatpak...")
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

	abort "❌ - #{ANSI::RED}This script has to be run from the users home directory#{ANSI::RESET}" if ENV['PWD'] != ENV['HOME']

	distro = get_distribution_name
	de = ENV['DESKTOP_SESSION']
	abort "❌ - #{ANSI::RED}Error: This script requires an APT-based Linux distribution#{ANSI::RESET}" unless debian_based?
	puts "OS\t#{distro}\nDE\t#{de}"
	abort "❌ - #{ANSI::RED}Error: No internet connection#{ANSI::RESET}" unless connected?
	OptionParser.new do |opts|
		opts.banner = "Usage: ./core.rb [option]"
		opts.on("-a","-A","--all","--ALL","--install-all") do 
			info_log("Sudo access required for this script")
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
			info_log("Sudo access required for this script")
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
			abort "❌ - #{ANSI::RED}Error: No internet connection#{ANSI::RESET}" unless connected?
			download_files
			set_alias
			set_min_bashrc
		end
		
	end.parse!

	success_log("All done.")

end
main


