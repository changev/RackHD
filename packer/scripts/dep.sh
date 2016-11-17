#!/bin/bash
#
# Setup the the box. This runs as root
apt-get -y update

# to support using the ansible provisioner
apt-get -y install expect python-dev python-pip python-yaml libffi-dev 
pip install ansible==2.2.0.0

# set a friendly hostname
rm -f /etc/hostname
echo "rackhd-demo" > /etc/hostname
