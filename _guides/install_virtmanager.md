---
layout: post
title:  Kvm + Virtmanager
---

# {{page.title}}

> **Note**: This guide was tested on Ubuntu 22.04 and 24.04
> **Source**: [How to Install KVM on Ubuntu 20.04](https://www.tecmint.com/install-kvm-on-ubuntu/)
> This is a work in progress

## Step 1
1. Check if virtualization is supported using the commands: <br> `egrep -c '(vmx|svm)' /proc/cpuinfo`<br>This command should return any number greater than 0
2. Install cpu checker: <br>`sudo apt update && sudo apt install cpu-checker`
3. Check if your system supports KVM <br>`sudo kvm-ok`<br> This should return the following output:
``` 
INFO: /dev/kvm exists
KVM acceleration can be used
```


## Step 2
1. Install KVM and other dependencies: <br>`sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager`
2. Enable the virtualization daemon: <br>`sudo systemctl status libvirtd`
3. Check if the kvm modules are running: <br>`lsmod | grep -i kvm`
4. This should return the following output (similar):
```
kvm_amd              208896   0
kvm                  1417216  1 kvm_amd
ccp                  155648   4 kvm_amd
```
5. Add your user to the necessary groups. This will allow qemu to use iso files: `sudo usermod -aG libvirt-qemu $USER` and `sudo usermod -aG libvirt $USER`
6. You can make virtual machines with virt-manager now. The process is similar to Virtualbox. 
7. If you get an error message in virt-manager that reads: `QEMU/KVM - Not Connected`, reboot. 

## Pending on this guide:
1. Add steps to create virtual machines graphically and via the command line
2. Add steps to export virtual machines
3. Add steps to create snapshopts and install spice tools