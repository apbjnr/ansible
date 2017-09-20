#!/usr/local/bin/bash

# Create the directory if it doesn't exist. Ignore if it does.
function directory()
{
    if [[ ! -d /opt/ansible/roles/freebsd-baseline ]];
    then
        mkdir /opt/ansible/roles/freebsd-baseline
        echo 0
    else
        echo 0
    fi
}

# Rsync everything except Markdown files.
function copyfiles()
{
    rsync -r --exclude='VERSION.txt' --exclude='*.md' --exclude='deploy.sh'  * /opt/ansible/roles/freebsd-baseline/
}

# Runtime
directory
copyfiles

