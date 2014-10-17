#!/bin/bash

set -e

/usr/sbin/groupadd yavor
echo "%yavor ALL=(ALL) ALL" > /etc/sudoers.d/yavor
chmod 440 /etc/sudoers.d/yavor

/usr/sbin/useradd -c "Yavor Atov" -m -g yavor yavor
/usr/bin/passwd yavor
/usr/sbin/usermod -a -G yavor yavor
chmod 755 /home/yavor

apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install ansible

cat hosts.template | sed -e '/^\[/a localhost ansible_connection=local' > /tmp/hosts

# run playbook
# ansible-playbook workstation.yml --user yavor --inventory-file /tmp/hosts -vvvv
