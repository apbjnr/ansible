# FreeBSD Ansible Playbook

Playbook for new FreeBSD 10 / 11 installs.

 - Bootstaps pkg / python
 - Updates / Upgrade pkg repo and OS
 - Installs preferred packages
 - Configures NTP
 - Configures PF
 - Configures OSSEC-client
 - Updates rc.conf



## Usage
```
git clone https://github.com/apbjnr/ansible.git
cd ansible
vi newinstall.yml
ansible -vvvv newinstall.yml -K
```
Edit newinstall.yml in your favorite text editor; hopefully vi; and comment out roles you do not wish to run. Also change the host to whatever you have put in your ansible hosts file.



## LICENSE

Licensed under the Apache License 2.0. See LICENSE for details. All rights reserved.
