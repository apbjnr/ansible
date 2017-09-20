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
cd ansible/FreeBSD
vi newinstall.yml
ansible -vvvv newinstall.yml -K
```
Edit newinstall.yml in your favorite text editor; hopefully vi; and comment out roles you do not wish to run. Also change the host to whatever you have put in your ansible hosts file and your remote user.


## GitLab CI

Everytime you commit changes to a master branch, CI is supposed to kick in and run various tests on your code and return a 'passed' or 'failed'. This is very oversimplified as you require 'git-runners' configured on servers that the GitLab-CI connects to, which is not part of this playbook.

The goal here is to:
 
 - Test the syntax code of the ansible play / roles
 - Run the ansible play against a container to confirm the play works. 

Push new code to the GIT master branch, that code is sent to a Ansible server which does syntax checking. It then copies the code to a specific location on the Ansible server for usage by other users.

Once the syntax check passes, GitLab connects to a docker server running on FreeBSD; and yes it is experimental but works so far; spins up a container, syncs the repo and runs the ansible code against the container. 

A passed or failed will then be indicated on the GIT repo page.

At the time of this writing, only the syntax checking has been completed. The following files and directories is used in the CI chain

 - ansible.cfg
 - .gitlab-ci.yml
 - deploy.sh
 - syntaxcheck/
 - syntaxcheck/inventory
 - syntaxcheck/syntaxcheck.yml


## LICENSE

Licensed under the Apache License 2.0. See LICENSE for details. All rights reserved.
