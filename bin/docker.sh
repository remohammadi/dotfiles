#!/bin/bash
date
source $HOME/.dotfiles/bin/docker-init.sh
export PATH=$HOME/.pyenv/shims:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/X11/bin:$HOME/.dotfiles/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
status=`boot2docker status`
if [ "$status" = "running" ]; then
	docker ps -a | grep -e 'days ago' -e 'hours ago' | grep 'Exited ' | awk '{print $1}' | xargs --no-run-if-empty docker rm
  docker images | egrep '<none>\ +<none>' | awk '{print $3}' | xargs --no-run-if-empty docker rmi
fi

images=`docker images | grep -v '<none> *<none>' | grep -v REPOSITORY | awk '{print $1}' | sort | uniq`
for image in $images; do
  latest_id=`docker images| grep "${image}" | grep latest | awk '{print $3}'`
  old_ids=`docker images| grep "${image}" | grep -v latest | awk '{print $3}'`
  for id in $old_ids; do
    if [[ "$latest_id" != "$id" ]]; then
      docker rmi $id &> /dev/null
    fi
  done
done

echo "Success"
