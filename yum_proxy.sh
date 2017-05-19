#!/bin/bash

sed -i '$a proxy=http://opscloud:cloud0518@10.53.13.245:3128/' /etc/yum.conf
yum -y install wget git net-tools bind-utils iptables-services bridge-utils bash-completion
apt-get update
yum -y install NetworkManager
systemctl start NetworkManager.service
systemctl status NetworkManager.service
systemctl enable NetworkManager.service
systemctl reboot
