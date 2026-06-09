#!/usr/bin/ruby
require 'socket'
require 'open-uri'
require 'optparse'

module ANSI
  RED    = "\e[31m"
  GREEN  = "\e[32m"
  YELLOW = "\e[33m"
  RESET  = "\e[0m"
end

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

def debian_based?
  system("which apt > /dev/null 2>&1")
end

def connected?
  Socket.tcp("8.8.8.8", 53, connect_timeout: 2).close
  true
rescue Errno::ENETUNREACH, Errno::ETIMEDOUT, Errno::EHOSTUNREACH
  false
end

#- Spinner function
def spinner(cmd)
  spinstr = ['⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏']
  print "\e[?25l"
  
  pid = spawn(cmd, err: :out)
  
  t = Thread.new do
    i = 0
    while true
      # Check if process is still running
      status = Process.waitpid(pid, Process::WNOHANG)
      break if status  # Process finished
      
      print "\r#{spinstr[i % spinstr.length]} "
      i += 1
      sleep 0.1
    end
  end
  
  Process.wait(pid)  # Wait for process to complete
  t.kill
  print "\r#{' ' * 10}\r"
  print "\e[?25h"
end

def sys_update
	spinner("sudo apt update")
	spinner("sudo apt upgrade -y")
	puts "\n✓ Update & upgrade complete"
end

# package cache cleaner
def broom 
	spinner("sudo apt clean")
	spinner("sudo apt autoclean")
	spinner("sudo apt autoremove")
	puts "\nCleaning Packages"
end

#- installing packages
def pkgs_install
	de = ENV['DESKTOP_SESSION']
	cli_pkgs = [
	  "pv", "git", "gcc", "vim", "tar", 
	  "curl", "make", "most", "perl", 
	  "tree", "wget", "bzip2", "samba",
	  "xclip", "boxes", "cowsay", "figlet",
	  "lolcat", "rsync", "snapd", "topilet",
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


	if de.upcase != "GNOME" 
	  pkgs_list = cli_pkgs + gui_pkgs
	elsif de.nil?
	  pkgs_list = clik_pkgs
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
	  spinner("sudo apt install -y #{pkg} 2> error.log")  
	 end
	puts "all done!"

end

#- Function to set aliases
def set_alias
	puts "Downloading bash_aliases file... "
	url = "https://cis106.com/assets/scripts/bash_aliases"
	# Backup old alias file
	old_aliases = ENV['HOME'] + "/" +".bash_aliases"
	old_aliases_bk = old_aliases + ".bk"
	system("mv","-v", old_aliases, old_aliases_bk)
	puts "Old bash_aliases file backed up to #{old_aliases_bk}"
	system("ls","-l",old_aliases_bk)
	puts "Installing new bash_aliases file"

	# To write later: Logic to make sure the alias file is in the PWD
	URI.open(url) do |remote_file|
	  File.open("bash_aliases", "wb") do |local_file|
		local_file.write(remote_file.read)
	  end
	end
	system("mv","-v", "bash_aliases", old_aliases)
	system("source", ".bashrc")
end 

#- Function to set minimal bashrc
def set_min_bashrc
	puts "Downloading bashrc..."
	url = "https://cis106.com/assets/scripts/bashrc"
	url2 = "https://cis106.com/assets/scripts/sysinfo.sh"
	# backup old bashrc
	old_bashrc = ENV['HOME'] + "/" +".bashrc"
	old_bashrc_bk = old_bashrc + ".bk"
	system("mv","-v", old_bashrc, old_bashrc_bk)
	puts "Old bashrc file backed up to #{old_bashrc_bk}"
	system("ls","-l",old_bashrc_bk)

# Optimize this later. Use an array of urls
	URI.open(url) do |remote_file|
	  File.open("bashrc", "wb") do |local_file|
		local_file.write(remote_file.read)
	  end
	end

	URI.open(url2) do |remote_file|
	  File.open("sysinfo.sh", "wb") do |local_file|
		local_file.write(remote_file.read)
	  end
	end
	system("mv","-v", "bashrc", old_bashrc)
	system("mv","-v", "sysinfo.sh", ".sysinfo.sh")
	system("source", ".bashrc")
end

#- Enable Flathub
def enable_flatpak
	puts "Adding Flathub repository to Flatpak..."
	system("flatpak", "remote-add", "--if-not-exists", "flathub", "https://dl.flathub.org/repo/flathub.flatpakrepo")
	system("")
end

#- Help screen
def help_menu
	puts "#{ANSI::GREEN}" + "core.rb\n".upcase + "#{ANSI::RESET}"
	puts "#{ANSI::GREEN}" +"synopsis".upcase + "#{ANSI::RESET}"
	puts "\tcore.rb [OPTION]"
	puts "#{ANSI::GREEN}" +"\ndescription".upcase + "#{ANSI::RESET}"
	puts "\tA basic bash script to install necessary software that will be used during the semester."
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
	distro = get_distribution_name
	de = ENV['DESKTOP_SESSION']
	abort "Error: This script requires an APT-based Linux distribution" unless debian_based?
	puts "OS\t#{distro}\nDE\t#{de}"
	abort "Error: No internet connection" unless connected?
	options = {
		dry_run: false
	}
	
	OptionParser.new do |opts|
		opts.banner = "Usage: ./core.rb [option]"
		opts.on("-a","-A","--all","--ALL","--install-all") do 
			puts "Sudo access required for this script"
			system("sudo -v")
			sys_update
			pkgs_install
			broom
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
		end
		opts.on("-h", "-H","--help") do
			help_menu
		end
		opts.on("-b","-B","--bash-config") do
			abort "Error: No internet connection" unless connected?
			set_alias
			set_min_bashrc
		end
		opts.on("") do
			help_menu
		end
		
	end.parse!

end
main


