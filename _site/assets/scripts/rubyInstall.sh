#!/usr/bin/env bash
set -Eeuo pipefail
trap 'echo -e "\033[1;31m❌ Script failed at line $LINENO: $BASH_COMMAND\033[0m"' ERR

# This script installs Ruby and its dependencies 
# on a Linux system. This script was built for 
# Debian 13.


# Determine log file name
create_log(){
	local script_name target_user target_home passwd_entry
	script_name=$(basename "$0")

	if (( EUID == 0 )); then
		target_user="${SUDO_USER:-root}"
		passwd_entry=$(getent passwd "$target_user") || {
			echo "Could not find home directory for $target_user"
			exit 1
		}
		IFS=: read -r _ _ _ _ _ target_home _ <<< "$passwd_entry"
	else
		target_user="${USER:-${LOGNAME:-}}"
		target_home="$HOME"
	fi

	[[ -n "$target_home" && -d "$target_home" ]] || {
		echo "Could not find home directory for ${target_user:-current user}"
		exit 1
	}

	log_file="$target_home/${script_name}.error.log"
	log_user="$target_user"
	if (( EUID == 0 )) && [[ "$target_user" != root ]]; then
		sudo -u "$target_user" -H -- touch "$log_file" || {
			echo "Could not create log file: $log_file"
			exit 1
		}
	else
		touch "$log_file" || { echo "Could not create log file: $log_file"; exit 1; }
	fi
}

# Prefix each line in a block with the time it was logged.
log_lines(){
	local timestamp line=""
	timestamp=$(date '+%Y-%m-%d %H:%M:%S%z')
	{
		while IFS= read -r line || [[ -n "$line" ]]; do
			printf '[%s] %s\n' "$timestamp" "$line" || exit 1
		done
	} | {
		if (( EUID == 0 )) && [[ "$log_user" != root ]]; then
			sudo -u "$log_user" -H -- tee -a -- "$log_file" >/dev/null
		else
			tee -a -- "$log_file" >/dev/null
		fi
	}
}


# Function to displaying messages to the user
info()    { echo -e "\033[1;34mℹ️  [INFO]\033[0m $*"; }
success() { echo -e "\033[1;32m✅ [SUCCESS]\033[0m $*"; }
warn()    { echo -e "\033[1;33m⚠️  [WARNING]\033[0m $*"; }
fatal()   { echo -e "\033[1;31m❌ [FATAL]\033[0m $*" >&2; exit 1; }

# Function banner

banner(){
	# Capture FIGlet output.
	mapfile -t art < <(figlet -f big "Ruby Installer")

	# Determine the longest line.
	width=0

	for line in "${art[@]}"; do
		(( ${#line} > width )) && width=${#line}
	done

	# Red styling.
	printf '\033[38;2;255;50;50m'

	# Top border.
	printf '┏'
	for ((i=0; i<width+2; i++)); do
		printf '━'
	done
	printf '┓\n'

	# Content.
	for line in "${art[@]}"; do
		printf '┃ %-*s ┃\n' "$width" "$line"
	done

	# Bottom border.
	printf '┗'
	for ((i=0; i<width+2; i++)); do
		printf '━'
	done
	printf '┛\n'

	# Reset colors.
	printf '\033[0m'

}



# Function to check if an internet connection exists
# ----------------

check_connectivity() {
    local internet_hosts=(
        "1.1.1.1:443"
        "8.8.8.8:443"
    )

    local github_hosts=(
        "github.com"
        "github.io"
        "raw.githubusercontent.com"
    )

    local endpoint host port

    # Stage 1: General internet connectivity
    info "Checking internet connectivity..."

    for endpoint in "${internet_hosts[@]}"; do
        host="${endpoint%:*}"
        port="${endpoint##*:}"

        if (: > "/dev/tcp/$host/$port") 2>/dev/null; then
            success "[ OK ] Internet connection available."
            break
        fi
    done

    if [[ "$endpoint" == "${internet_hosts[-1]}" ]]; then
        # The last endpoint may also have succeeded.
        if ! (: > "/dev/tcp/${internet_hosts[-1]%:*}/${internet_hosts[-1]##*:}") 2>/dev/null; then
            fatal "[FAIL] No internet connection."
            return 1
        fi
    fi

    # Stage 2: GitHub connectivity
    info "Checking GitHub connectivity..."

    for host in "${github_hosts[@]}"; do
        if (: > "/dev/tcp/$host/443") 2>/dev/null; then
            success "[ OK ] $host - reachable."
        else
            printf '[FAIL] %s is unreachable.\n' "$host"
            fatal "Aborting."
            return 1
        fi
    done

    success "All connectivity checks passed."
    return 0
}



# Function to check if the user has root privileges

check_root() {
    # Check whether the current user is root or has sudo privileges.
    if (( EUID == 0 )); then
        printf '%s\n' "[ OK ] Running as root."
        return 0
    fi

    # Check whether the user has sudo privileges.
    if ! sudo -v; then
        printf '%s\n' "[FAIL] Root privileges required. Aborting."
        exit 1
    fi

    printf '%s\n' "[ OK ] Sudo authentication successful."

    # Re-execute the current script with root privileges.
    printf '%s\n' "Restarting script with root privileges..."

    exec sudo -- "$BASH" "$0" "$@"
}

# Function to install dependencies

# ============================================================
# Dependency installation
# ============================================================

dependencies() {
    local packages=(
        build-essential
        git
        curl
        wget
        figlet
        vim
        autoconf
        bison
        rustc
        libssl-dev
        libyaml-dev
        libreadline-dev
        zlib1g-dev
        libncurses-dev
        libffi-dev
        libgdbm-dev
        libdb-dev
        uuid-dev
    )

    local missing=()
    local pkg policy output
    local i

    # --------------------------------------------------------
    # 1. Verify log file exists
    # --------------------------------------------------------

    if [[ ! -f "$log_file" ]]; then
        fatal "Log file does not exist: $log_file"
    fi

    # --------------------------------------------------------
    # 2. Update package indexes
    # --------------------------------------------------------

    info "Updating APT package indexes..."

    if ! output=$(sudo apt-get update -qq 2>&1); then
        {
            printf '%s\n' "[ERROR] Failed to update APT package indexes."
            printf '%s\n' "$output"
        } | log_lines

        fatal "Could not update package indexes. See $log_file"
    fi

    success "APT package indexes updated."

    # --------------------------------------------------------
    # 3. Check package availability
    # --------------------------------------------------------

    info "Checking dependency availability..."

    for pkg in "${packages[@]}"; do
        policy=$(apt-cache policy "$pkg" 2>/dev/null)

        if [[ "$policy" != *"Candidate:"* ||
              "$policy" == *"Candidate: (none)"* ]]; then

            missing+=("$pkg")

            printf '[ERROR] Package unavailable in configured repositories: %s\n' \
                "$pkg" | log_lines
        fi
    done

    if (( ${#missing[@]} > 0 )); then
        warn "The following packages are unavailable:"

        for pkg in "${missing[@]}"; do
            warn "$pkg"
        done

        fatal "Missing dependencies detected. Installation aborted. See $log_file"
    fi

    success "All dependencies are available."

    # --------------------------------------------------------
    # 4. Display installation list (two columns)
    # --------------------------------------------------------

    info "The following dependencies will be installed:"

    printf '%s\n' "-----------------------------------------------"

    for ((i=0; i<${#packages[@]}; i+=2)); do
        printf '  %-26s' "${packages[i]}"

        if (( i+1 < ${#packages[@]} )); then
            printf '%s' "${packages[i+1]}"
        fi

        printf '\n'
    done

    printf '%s\n' "-----------------------------------------------"

    # --------------------------------------------------------
    # 5. Install packages individually
    # --------------------------------------------------------

    for pkg in "${packages[@]}"; do
        info "Installing $pkg..."

        if output=$(sudo apt-get install -y -qq "$pkg" 2>&1); then
            success "$pkg has been successfully installed."
        else
            {
                printf '[ERROR] Failed to install package: %s\n' "$pkg"
                printf '%s\n' "$output"
            } | log_lines

            fatal "Failed to install $pkg. Aborting. See $log_file"
        fi
    done

    # --------------------------------------------------------
    # 6. Completion
    # --------------------------------------------------------

    success "All dependencies installed successfully."
}

# Function to clone necessary repositories

clone_repos() {
    local target_user target_home
    local rbenv_dir plugin_dir bashrc
    local pkg output line current
    local found=false

    # --------------------------------------------------------
    # 1. Identify the original user
    # --------------------------------------------------------

    if (( EUID == 0 )); then
        target_user="${SUDO_USER:-root}"
    else
        target_user="${USER:-${LOGNAME:-}}"
    fi

    [[ -n "$target_user" ]] || fatal "Could not identify the installation user."

    target_home="$HOME"

    # Resolve the original user's home directory.
    if [[ "$target_user" != root ]] && (( EUID == 0 )); then

        local passwd_name passwd_pass passwd_uid passwd_gid
        local passwd_gecos passwd_home passwd_shell

        while IFS=: read -r passwd_name passwd_pass passwd_uid \
            passwd_gid passwd_gecos passwd_home passwd_shell; do

            if [[ "$passwd_name" == "$target_user" ]]; then
                target_home="$passwd_home"
                found=true
                break
            fi

        done < /etc/passwd

        [[ "$found" == true && -d "$target_home" ]] ||
            fatal "Could not locate home directory for $target_user."
    fi

    rbenv_dir="$target_home/.rbenv"
    plugin_dir="$rbenv_dir/plugins/ruby-build"
    bashrc="$target_home/.bashrc"

    # Run operations as the original user when elevated.
    local -a as_user=()

    if (( EUID == 0 )) && [[ "$target_user" != root ]]; then
        as_user=(sudo -u "$target_user" -H --)
    fi

    # --------------------------------------------------------
    # 2. Verify log file
    # --------------------------------------------------------

    [[ -f "$log_file" ]] ||
        fatal "Log file does not exist: $log_file"

    info "Installing rbenv for user: $target_user"

    # --------------------------------------------------------
    # 3. Clone rbenv
    # --------------------------------------------------------

    if [[ -d "$rbenv_dir/.git" ]]; then
        warn "rbenv is already installed. Skipping clone."
    else
        [[ ! -e "$rbenv_dir" ]] ||
            fatal "Invalid rbenv directory: $rbenv_dir"

        info "Cloning rbenv..."

        if output=$("${as_user[@]}" git clone \
            https://github.com/rbenv/rbenv.git "$rbenv_dir" 2>&1); then

            success "rbenv successfully cloned."

        else
            {
                printf '%s\n' "[ERROR] Failed to clone rbenv."
                printf '%s\n' "$output"
            } | log_lines

            fatal "Failed to clone rbenv. See $log_file"
        fi
    fi

    # --------------------------------------------------------
    # 4. Configure user's Bash
    # --------------------------------------------------------

    local config_lines=(
        'export PATH="$HOME/.rbenv/bin:$PATH"'
        'eval "$(rbenv init - bash)"'
    )

    for line in "${config_lines[@]}"; do
        found=false

        if [[ -f "$bashrc" ]]; then
            while IFS= read -r current || [[ -n "$current" ]]; do
                if [[ "$current" == "$line" ]]; then
                    found=true
                    break
                fi
            done < "$bashrc"
        fi

        if [[ "$found" == false ]]; then
            if ! output=$("${as_user[@]}" bash -c \
                'printf "%s\n" "$1" >> "$2"' _ "$line" "$bashrc" 2>&1); then

                {
                    printf '[ERROR] Failed to update .bashrc: %s\n' "$line"
                    printf '%s\n' "$output"
                } | log_lines

                fatal "Could not configure Bash. See $log_file"
            fi
        fi
    done

    success "Bash configuration updated."

    # --------------------------------------------------------
    # 5. Create plugin directory
    # --------------------------------------------------------

    if ! output=$("${as_user[@]}" mkdir -p "$rbenv_dir/plugins" 2>&1); then
        {
            printf '%s\n' "[ERROR] Failed to create plugin directory."
            printf '%s\n' "$output"
        } | log_lines

        fatal "Could not create plugin directory. See $log_file"
    fi

    # --------------------------------------------------------
    # 6. Clone ruby-build
    # --------------------------------------------------------

    if [[ -d "$plugin_dir/.git" ]]; then
        warn "ruby-build is already installed. Skipping clone."
    else
        [[ ! -e "$plugin_dir" ]] ||
            fatal "Invalid ruby-build directory: $plugin_dir"

        info "Cloning ruby-build..."

        if output=$("${as_user[@]}" git clone \
            https://github.com/rbenv/ruby-build.git "$plugin_dir" 2>&1); then

            success "ruby-build successfully cloned."

        else
            {
                printf '%s\n' "[ERROR] Failed to clone ruby-build."
                printf '%s\n' "$output"
            } | log_lines

            fatal "Failed to clone ruby-build. See $log_file"
        fi
    fi

    # --------------------------------------------------------
    # 7. Completion
    # --------------------------------------------------------

    success "rbenv and ruby-build successfully installed for $target_user."
}

# Function to install ruby using rbenv

# ============================================================
# Install and configure Ruby
# ============================================================

install_ruby() {
    local ruby_version="4.0.9"
    local target_user target_home
    local rbenv_dir rbenv_bin ruby_bin
    local passwd_name passwd_pass passwd_uid passwd_gid
    local passwd_gecos passwd_home passwd_shell
    local output

    # --------------------------------------------------------
    # 1. Identify the original user
    # --------------------------------------------------------

    if (( EUID == 0 )); then
        target_user="${SUDO_USER:-root}"
        target_home=""

        while IFS=: read -r passwd_name passwd_pass passwd_uid \
            passwd_gid passwd_gecos passwd_home passwd_shell; do

            if [[ "$passwd_name" == "$target_user" ]]; then
                target_home="$passwd_home"
                break
            fi

        done < /etc/passwd

        [[ -n "$target_home" && -d "$target_home" ]] ||
            fatal "Could not locate home directory for $target_user."

    else
        target_user="${USER:-${LOGNAME:-}}"
        target_home="$HOME"
    fi

    [[ -n "$target_user" && -n "$target_home" ]] ||
        fatal "Could not determine the default user."

    rbenv_dir="$target_home/.rbenv"
    rbenv_bin="$rbenv_dir/bin/rbenv"
    ruby_bin="$rbenv_dir/versions/$ruby_version/bin/ruby"

    # Execute commands as the original user when running as root.
    local -a as_user=()

    if (( EUID == 0 )) && [[ "$target_user" != root ]]; then
        as_user=(sudo -u "$target_user" -H --)
    fi

    # --------------------------------------------------------
    # 2. Verify log file and rbenv installation
    # --------------------------------------------------------

    [[ -f "$log_file" ]] ||
        fatal "Log file does not exist: $log_file"

    [[ -x "$rbenv_bin" ]] ||
        fatal "rbenv is not installed for $target_user."

    [[ -x "$rbenv_dir/plugins/ruby-build/bin/rbenv-install" ]] ||
        fatal "ruby-build plugin is not installed for $target_user."

    info "Installing Ruby $ruby_version for $target_user..."

    # --------------------------------------------------------
    # 3. Install Ruby
    # --------------------------------------------------------

    if [[ -x "$ruby_bin" ]]; then
        warn "Ruby $ruby_version is already installed. Skipping installation."

    else
        if output=$("${as_user[@]}" "$rbenv_bin" install "$ruby_version" 2>&1); then
            success "Ruby $ruby_version successfully installed."
        else
            {
                printf '[ERROR] Failed to install Ruby %s for %s.\n' \
                    "$ruby_version" "$target_user"
                printf '%s\n' "$output"
            } | log_lines

            fatal "Ruby installation failed. See $log_file"
        fi
    fi

    # --------------------------------------------------------
    # 4. Set Ruby as the global default
    # --------------------------------------------------------

    info "Setting Ruby $ruby_version as the global version..."

    if output=$("${as_user[@]}" "$rbenv_bin" global "$ruby_version" 2>&1); then
        success "Ruby $ruby_version configured as the global version."
    else
        {
            printf '[ERROR] Failed to set Ruby %s as global version.\n' \
                "$ruby_version"
            printf '%s\n' "$output"
        } | log_lines

        fatal "Could not configure the global Ruby version. See $log_file"
    fi

    # --------------------------------------------------------
    # 5. Rebuild rbenv shims
    # --------------------------------------------------------

    if output=$("${as_user[@]}" "$rbenv_bin" rehash 2>&1); then
        success "rbenv shims updated."
    else
        {
            printf '[ERROR] Failed to rebuild rbenv shims.\n'
            printf '%s\n' "$output"
        } | log_lines

        fatal "Could not rebuild rbenv shims. See $log_file"
    fi

    # --------------------------------------------------------
    # 6. Verify Ruby installation
    # --------------------------------------------------------

    if output=$("${as_user[@]}" "$rbenv_bin" exec ruby --version 2>&1); then
        success "Ruby is ready for $target_user: $output"
    else
        {
            printf '[ERROR] Ruby verification failed.\n'
            printf '%s\n' "$output"
        } | log_lines

        fatal "Ruby installation verification failed. See $log_file"
    fi
}



# Function to install gems


# ============================================================
# Install Ruby gems
# ============================================================

install_gems() {
    local ruby_version="4.0.9"

    local gems=(
        bundler
        rails
        jekyll
    )

    local target_user target_home
    local rbenv_dir rbenv_bin
    local passwd_name passwd_pass passwd_uid passwd_gid
    local passwd_gecos passwd_home passwd_shell
    local gem_name output

    # --------------------------------------------------------
    # 1. Identify the original user
    # --------------------------------------------------------

    if (( EUID == 0 )); then
        target_user="${SUDO_USER:-root}"
        target_home=""

        while IFS=: read -r passwd_name passwd_pass passwd_uid \
            passwd_gid passwd_gecos passwd_home passwd_shell; do

            if [[ "$passwd_name" == "$target_user" ]]; then
                target_home="$passwd_home"
                break
            fi

        done < /etc/passwd

        [[ -n "$target_home" && -d "$target_home" ]] ||
            fatal "Could not locate home directory for $target_user."

    else
        target_user="${USER:-${LOGNAME:-}}"
        target_home="$HOME"
    fi

    [[ -n "$target_user" && -n "$target_home" ]] ||
        fatal "Could not determine the default user."

    rbenv_dir="$target_home/.rbenv"
    rbenv_bin="$rbenv_dir/bin/rbenv"

    # Execute commands as the original user when running as root.
    local -a as_user=()

    if (( EUID == 0 )) && [[ "$target_user" != root ]]; then
        as_user=(sudo -u "$target_user" -H --)
    fi

    # --------------------------------------------------------
    # 2. Verify installation environment
    # --------------------------------------------------------

    [[ -f "$log_file" ]] ||
        fatal "Log file does not exist: $log_file"

    [[ -x "$rbenv_bin" ]] ||
        fatal "rbenv is not installed for $target_user."

    [[ -x "$rbenv_dir/versions/$ruby_version/bin/gem" ]] ||
        fatal "Ruby $ruby_version is not installed for $target_user."

    info "Installing Ruby gems for $target_user..."

    # --------------------------------------------------------
    # 3. Install gems
    # --------------------------------------------------------

    for gem_name in "${gems[@]}"; do

        info "Installing $gem_name..."

        # Skip gems that are already installed.
        if output=$("${as_user[@]}" env "RBENV_VERSION=$ruby_version" \
            "$rbenv_bin" exec gem list --local --exact "$gem_name" 2>&1) &&
            [[ -n "$output" ]]; then

            success "$gem_name is already installed."
            continue
        fi

        # Install the gem without generating documentation.
        if output=$("${as_user[@]}" env "RBENV_VERSION=$ruby_version" \
            "$rbenv_bin" exec gem install --no-document "$gem_name" 2>&1); then

            success "$gem_name has been successfully installed."

        else
            {
                printf '[ERROR] Failed to install Ruby gem: %s\n' "$gem_name"
                printf '%s\n' "$output"
            } | log_lines

            fatal "Failed to install $gem_name. See $log_file"
        fi
    done

    # --------------------------------------------------------
    # 4. Rebuild rbenv shims
    # --------------------------------------------------------

    info "Updating rbenv shims..."

    if output=$("${as_user[@]}" env "RBENV_VERSION=$ruby_version" \
        "$rbenv_bin" rehash 2>&1); then

        success "rbenv shims updated."

    else
        {
            printf '%s\n' "[ERROR] Failed to rebuild rbenv shims."
            printf '%s\n' "$output"
        } | log_lines

        fatal "Could not rebuild rbenv shims. See $log_file"
    fi

    # --------------------------------------------------------
    # 5. Completion
    # --------------------------------------------------------

    success "All Ruby gems installed successfully for $target_user."
}

# Function to clean

# ============================================================
# Cleanup
# ============================================================

cleanup() {
    # Verify log file variable.
    if [[ -z "${log_file:-}" ]]; then
        warn "Log file path is not defined. Skipping cleanup."
        return 1
    fi

    # Nothing to clean up if the log file does not exist.
    if [[ ! -e "$log_file" && ! -L "$log_file" ]]; then
        return 0
    fi

    # Verify that the log path is a regular file.
    if [[ ! -f "$log_file" ]]; then
        warn "Log path is not a regular file: $log_file"
        return 1
    fi

    # Remove empty log file.
    if [[ ! -s "$log_file" ]]; then
        if rm -f -- "$log_file"; then
            success "Empty log file removed."
        else
            warn "Could not remove empty log file: $log_file"
            return 1
        fi
    else
        warn "Log file contains errors and will be preserved: $log_file"
    fi

    return 0
}

# Function for help/man page
# To be added later
# main starts here
main(){
	check_root "$@"
	banner
	if ! check_connectivity; then
	    exit 1
	fi
	create_log
	dependencies
	clone_repos
	install_ruby
	install_gems
	cleanup
}
main
# main ends here
