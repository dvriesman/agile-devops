#!/bin/sh

yum groupinstall "Development tools"

yum install https://centos7.iuscommunity.org/ius-release.rpm

yum install dkms

yum install kernel-devel

