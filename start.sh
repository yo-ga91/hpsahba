#!/bin/bash


echo "blacklist hpwdt" >> /etc/modprobe.d/blacklist-hp.conf
cat /etc/modprobe.d/blacklist-hp.conf
apt update -y && apt install wget sudo htop iotop sdparm tmux curl make gcc pandoc git gh dkms -y
apt install  pve-headers-$(uname -r)
cd /root
mkdir git
cd ./git
mkdir im-0 && cd ./im-0
git clone git clone https://github.com/im-0/hpsahba/
cd /root
git clone https://github.com/99dimitris/hpsahba
cp -r /root/im-0/hpsahba/kernel/5.18-patchset-v2 /root/hpsahba/kernel/6.8-patchset-v2
cd /root/hpsahba
make
cd /root/hpsahba/contrib/dkms
./install.sh
