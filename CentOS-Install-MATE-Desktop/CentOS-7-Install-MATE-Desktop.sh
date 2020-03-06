#!/bin/bash
#install mate desktop
sudo yum update -y
sudo yum install -y epel-release
sudo yum install -y kernel-devel
sudo yum groupinstall -y "X Window system"
sudo yum groupinstall -y "MATE Desktop"
sudo systemctl set-default graphical.target
sudo rm '/etc/systemd/system/default.target'
sudo ln -s '/usr/lib/systemd/system/graphical.target' '/etc/systemd/system/default.target'
sudo yum groupinstall -y "Development Tools"
sudo yum install -y gnome-disk-utility
echo "Should reboot"