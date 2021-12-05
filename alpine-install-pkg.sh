#!/bin/sh

# enable test and community repo
echo "http://dl-4.alpinelinux.org/alpine/edge/community"    >> /etc/apk/repositories
echo "http://dl-4.alpinelinux.org/alpine/edge/testing"      >> /etc/apk/repositories

apk update
apk add docker virtualbox-guest-additions

# enable and start services
for svc in virtualbox-guest-additions docker
do
    rc-service "$svc" add
    rc-service "$svc" start
done
rc-status
