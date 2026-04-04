---
layout: page
title: Learning Git
---

# {{page.title}}

* Presentation [here](https://rapurl.live/wxx)
* Cheat Sheet [here](https://training.github.com/downloads/github-git-cheat-sheet/)

## Setup Git
   1. Set your username:  `git config --global user.name 'your username here'`
   2. Set your email address: `git config --global user.email 'your email here'`

## Setup SSH authentication

1. Generate an ssh key: `ssh-keygen -t ed25519 -C "your_email@example.com"` This creates a new SSH key, using the provided email as a label. When you're prompted to: `"Enter a file in which to save the key,"` press Enter. This accepts the default file location. At the prompt, to type a secure passphrase, press enter for no passphrase. If you want to use a passphrase, go ahead as it provides an extra layer of security. However, for this course you do  not need to add a passphase. 

2. Use the following command to see your public ssh key: `cat ~/.ssh/id_ed25519.pub` copy the entire output of this command to the clipboard. See examle here:

3. In your github page, go to `settings` > `SSH and GPG Keys` Here add your ssh key that you copied to the clipboad in the step prior. Type `yes` (the whole word) and press enter and you are done

4. Test you ssh connection by using this command: `ssh -T git@github.com` You will see the following outcome:

> If you do not see an error message or a different message than the one shown prior, then your SSH connection is correct. Now you can push and clone using SSH.

