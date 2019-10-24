#!/bin/sh

yum -y install qemu-kvm libvirt virt-install bridge-utils libvirt-devel  libxslt-devel libxml2-devel libvirt-devel libguestfs-tools-c
echo "net.ipv4.ip_forward = 1"|sudo tee /etc/sysctl.d/99-ipforward.conf
sysctl -p /etc/sysctl.d/99-ipforward.conf
systemctl start libvirtd
systemctl enabled libvirtd
systemctl start libvirtd
#curl -o vagrant.rpm https://releases.hashicorp.com/vagrant/1.7.4/vagrant_1.7.4_x86_64.rpm
curl -o vagrant.rpm https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.rpm
rpm -Uvh vagrant.rpm
yum -y install ruby-devel gcc
yum -y install gcc-c++
vagrant plugin install vagrant-libvirt
