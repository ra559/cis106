#!/usr/bin/env bash
set -Eeuo pipefail
trap 'echo -e "\033[1;31m❌ Script failed at line $LINENO: $BASH_COMMAND\033[0m"' ERR

# --- Color helpers ---
info()    { echo -e "\033[1;34m[INFO]\033[0m $*"; }
success() { echo -e "\033[1;32m[SUCCESS]\033[0m $*"; }
warn()    { echo -e "\033[1;33m[WARN]\033[0m $*"; }

# --- Update & install dependencies ---
info "Updating system and installing dependencies..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl gnupg2 apt-transport-https ca-certificates lsb-release \
    libssl-dev libreadline-dev zlib1g-dev libyaml-dev libsqlite3-dev \
    libxml2-dev libxslt1-dev libpq-dev libcurl4-openssl-dev libffi-dev \
    libgdbm-dev libncurses5-dev automake libtool bison libvips libvips-dev

# --- Install rbenv manually (skip if exists) ---
if [ ! -d "$HOME/.rbenv" ]; then
    info "Installing rbenv..."
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    cd ~/.rbenv && src/configure && make -C src
else
    warn "rbenv already installed. Skipping..."
fi

# --- Add rbenv to shell startup ---
if ! grep -q 'rbenv init' ~/.bashrc; then
    info "Updating ~/.bashrc with rbenv config..."
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init - bash)"' >> ~/.bashrc
fi

# --- Load rbenv for current session ---
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - bash)"

# --- Install ruby-build if missing ---
if [ ! -d "$(rbenv root)/plugins/ruby-build" ]; then
    info "Installing ruby-build..."
    git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)/plugins/ruby-build"
fi

# --- Install Ruby 3.3.0 if needed ---
if ! rbenv versions | grep -q "3.3.0"; then
    info "Installing Ruby 3.3.0 (this may take a while)..."
    rbenv install 3.3.0
else
    warn "Ruby 3.3.0 already installed. Skipping..."
fi

rbenv global 3.3.0
success "Ruby version: $(ruby -v)"

# --- Install frequently used gems safely ---
info "Installing common gems: bundler, rails, pry, jekyll..."

GEMS=("bundler" "rails" "pry" "jekyll")
for gem in "${GEMS[@]}"; do
    if ! gem list -i "$gem" &>/dev/null; then
        info "Installing $gem..."
        gem install "$gem" --no-document
    else
        warn "$gem already installed. Skipping..."
    fi
done

rbenv rehash
success "Rails version: $(rails -v)"
success "Jekyll version: $(jekyll -v)"

# --- Optional: Install SQLite browser ---
info "Installing sqlitebrowser (optional GUI)..."
sudo apt install -y sqlitebrowser

success "✅ Ruby on Rails + Jekyll development environment ready!"

