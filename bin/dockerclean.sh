#!/bin/bash

export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST="tcp://192.168.59.103:2376"
export PATH=$HOME/.pyenv/shims:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/X11/bin:$HOME/.dotfiles/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin

status=`boot2docker status`
if [ "$status" = "running" ]; then
  docker ps -a | grep -e 'days ago' -e 'hours ago' | grep 'Exited ' | awk '{print $1}' | xargs --no-run-if-empty docker rm
  docker images | egrep '<none>\ +<none>' | awk '{print $3}' | xargs --no-run-if-empty docker rmi
fi
