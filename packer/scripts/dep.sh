#!/bin/bash
#
# Setup the the box. This runs as root
apt-get -y update

# to support using the ansible provisioner
apt-get -y install expect aptitude python-dev python-pip python-yaml libffi-dev
pip install --upgrade setuptools
pip install ansible==2.2.0.0

# set a friendly hostname
rm -f /etc/hostname
echo "rackhd" > /etc/hostname

# Move the library script in scripts/common to ansible folder, so that it can be copied to remote node and be invoked in ansible scripts
cp  scripts/common/get_nic_name_by_index.sh  ansible/roles/isc-dhcp-server/files/
