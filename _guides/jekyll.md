---
layout: post
title: Install Jekyll
---

# How to install Jekyll in Ubuntu

* Note: This is a daft. 
* [Main guide](https://jekyllrb.com/docs/installation/ubuntu/)
* [tutorial](https://kinsta.com/blog/jekyll-static-site/)

## Dependencies:

```bash
sudo apt-get install ruby-full build-essential zlib1g-dev
```

## Gem Installation directory 

```bash
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

## Install jekyll

```bash
gem install jekyll bundler
```

## Create a jekyll site

To generate a new site, use the command: `jekyll new name-of-site`. This will generate a directoryw with the name of the site in the current directory.
