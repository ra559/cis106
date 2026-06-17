#!/usr/bin/env ruby
require 'socket'
require 'open-uri'
require 'uri'
require "digest"
require "fileutils"
# Message for future self:
# This script is designed to kill/exit the program the moment an error is found
# read the log file and use grep to find what failed
LOG_FILE = "vs_code_installer.log"


# For coloring help menu
module ANSI
  RED    = "\e[31m"
  GREEN  = "\e[32m"
  YELLOW = "\e[33m"
  BLUE   = "\e[34m"
  RESET  = "\e[0m"
end

# Check if system is debian based
def debian_based?
  system("which apt > /dev/null 2>&1")
end
## Function to check internet connection
def connected?
  Socket.tcp("8.8.8.8", 53, connect_timeout: 2).close
  true
rescue Errno::ENETUNREACH, Errno::ETIMEDOUT, Errno::EHOSTUNREACH
  false
end

def warn_log(msg)
	puts "⚠️ - #{ANSI::YELLOW}TYPE [WARNING]: #{msg}#{ANSI::RESET}"
end

def info_log(msg)
	puts "ℹ️ - #{ANSI::BLUE}TYPE [INFO]: #{msg}#{ANSI::RESET}"
end

def error_log(msg)
	puts "❌ - #{ANSI::RED}TYPE [ERROR]: #{msg}#{ANSI::RESET}"
end

def success_log(msg)
	puts "✅ - #{ANSI::GREEN}TYPE [SUCCESS]: #{msg}#{ANSI::RESET}"
end

def logger(message,type)
	# saves the log first 
	File.open(LOG_FILE, "a") do |file|
		file.puts("[#{Time.now}] #{message}")
	end
	# Determine the type of log to display
	case type
	when "error"
		# add more verbosity in case this is run in a TTY without ANSI support
		error_log("#{message}")
		# kills the program on any error message
		abort
	when "success"
		success_log("#{message}")
	when "warning"
		warn_log("#{message}")
	when "info"
		info_log("#{message}")
	else
		puts "TYPE [#{type}]: #{message}"
	end
	
  
end

#- Perform system update
def sys_update
	if system("sudo", "apt", "update")
		logger("System update successful","success")
		if system("sudo", "apt", "upgrade", "-y")
			logger("System upgrade successful","success")
		else
			logger("Script can't continue due to an upgrade failure. Try to upgrade manually: sudo apt upgrade","error")
		end
	else
		logger("Script can't continue due to update failure. Try to update manually: sudo apt update","error")
	end
	
	logger("Update & upgrade complete","success")
end

def broom 
	if system("sudo", "apt", "clean") 
		logger("clean command executed successfully", "success")
	 else 
		logger("Package cache cleaning failed","error")
	end 
	if system("sudo", "apt", "autoclean") 
		logger("autoclean command executed successfully","success") 
	else 
		logger("Package cache autocleaning failed","error")
	end
	if system("sudo", "apt", "autoremove") 
		logger("autoremove command executed successfully","success") 
	else 
		logger("Package cache autoremove failed","error")
	end
	logger("System Package cache has been cleaned","success") 
end

def setup_repo
## Check if vs code repository already exist 
	if File.exist?('/etc/apt/sources.list.d/vscode.sources')
		logger("VS Code repository already exists. Skipping repository setup.","warning")
	else
		# Download key
		key = URI.open("https://packages.microsoft.com/keys/microsoft.asc").read
		File.write("microsoft.asc", key)
		if File.exist?("microsoft.asc")
			logger("Key was downloaded successfully to microsoft.asc", "success")
		else
			logger("Key did not download correctly. microsoft.asc was not found","error")
		end
		# Convert to gpg format
		if system("sudo gpg --dearmor -o /usr/share/keyrings/microsoft.gpg microsoft.asc") 		
			logger("gpg key conversion was successful","success")
		# Create repo file
			repo = <<~REPO
Types: deb
URIs: https://packages.microsoft.com/repos/code
Suites: stable
Components: main
Architectures: amd64,arm64,armhf
Signed-By: /usr/share/keyrings/microsoft.gpg
		REPO
			
			File.write("vscode.sources", repo)
			if system("sudo","mv", "-v", "vscode.sources", "/etc/apt/sources.list.d/")
				logger("vscode.sources files set successfully","success")
			else
				logger("Setting vscode.sources file failed. Exiting now")
			end
			# Ensure that the file exist
			unless File.exist?("/etc/apt/sources.list.d/vscode.sources")
				logger("The file /etc/apt/sources.list.d/vscode.sources is MISSING something went seriously wrong.","error")
			end
			# Cleanup
			if File.delete("microsoft.asc")
				logger("File: microsoft.asc -> deleted successfully","success")
			end
		else
			logger("Failed to convert microsoft key to gpg format. Ensure that gpg installed","error")
		end
	end

end 

## Download extensions
## This was separated from extentions_install
## to make sure that the file downloaded is not owned by root
def download_extensions
	exts="https://cis106.com/assets/scripts/vscode_extensions.txt"

	begin
		fname = exts.split('/').last
		URI.open(exts) do |remote_file|
		File.open(fname,"wb") do |local_file|
			local_file.write(remote_file.read)
			end
		end
		
	rescue OpenURI::HTTPError => e
		if e.message =~ /404/
			logger("Failed to download #{fname} - File not found (404)","error")
		else
			logger("failed to download #{fname} - HTTP error #{e.message}", "error")
		end

	rescue SocketError,
			Errno::ECONNREFUSED,
			Errno::ENETUNREACH,
			Errno::EHOSTUNREACH,
			Net::OpenTimeout,
			Net::ReadTimeout,
			OpenSSL::SSL::SSLError
		logger("failed to download #{fname} - check internet connection","error")
	end
end

## Installing extentions
def extentions_install
	checksum="4ab9ef74d9c8adab32d3f508f051cee93fb8fadd31408b5d442630e41bd1a7235d9c7efda5bba527c695b23a4099df98f5763034c9883c11a299b3f931debfee"
	ext_downloaded_hash = Digest::SHA512.file("vscode_extensions.txt").hexdigest

	if checksum != ext_downloaded_hash
		logger("Extensions file integrity failed. DELETE vscode_extentions.txt and try again","error")
	end
	extensions = File.readlines("vscode_extensions.txt", chomp: true)

	extensions.each do |ext|
			if system("code", "--install-extension", ext)
				logger("#{ext} Installed successfully","success")
			else
				logger("#{ext} Installation failed","error")
			end
	end

end

def main
	unless connected?
		logger("The script failed to execute because an internet connection was not detected.","error")
	end
	
	unless debian_based?
		logger("The script failed to execute because this distribution does not have or use APT as the package manager","error")
	end
	download_extensions
	logger("Sudo access required for this script","info")
	system("sudo -v")
	setup_repo
	sys_update
	broom
	## Install vscode
	if system("sudo","apt","install", "-y","code")
		logger("vs code installed successfully","success")
		extentions_install
		logger("All Done!","success")
	else
		logger("VS Code cannot be installed in this machine","error")
	end
end

main


