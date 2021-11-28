#!/bin/sh

# enable test and community repo
vi /etc/apk/repositories 

apk update
apk add docker virtualbox-guest-additions

# enable vbox guest additions service
rc-update add virtualbox-guest-additions
rc-service virtualbox-guest-additions start
rc-status

# add docker user
# NOT NEEDED? adduser dock

DOCKER_HOME="/dockerhome"

mkdir "$DOCKER_HOME"

cp /etc/fstab ./fstab.old
echo "share           $DOCKER_HOME     vboxsf  defaults        0       0" >> /etc/fstab
