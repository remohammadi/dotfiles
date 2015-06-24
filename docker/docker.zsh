#Boot2Docker stuff
source $HOME/.dotfiles/bin/docker-init.sh

function drit() {
  if [[ -z "$1" ]]; then
    docker run --rm -it "`docker images | head -2 | tail -1 | awk '{print $3}'`" /bin/bash
  else
    docker run --rm -it "$1" /bin/bash
  fi
}

function de() {
  if [[ -z "$1" ]]; then
    container_id=`docker ps | grep -v 'CONTAINER' | head -1 | awk '{print $1}'`
    docker exec -it $container_id /bin/bash
  else
    docker exec -it $1 /bin/bash
  fi

}

alias dps='docker ps'
alias dpsa='docker ps -a'

function ds () {
  docker ps | grep -v 'CONTAINER' | head -1 | awk '{print $1}' | xargs --no-run-if-empty docker stop
}

function docker-ip() {
  boot2docker ip 2> /dev/null
}

function dp() {
  docker push $1
}

function dlogs() {
  if [[ -z "$1" ]]; then
    echo "Usage dlogs <container>"
  else
    docker logs --tail=100 -f $1
  fi
}

function di () {
  if [[ "$1" == "" ]]; then
    docker images | grep -v '<none> *<none>'
  else
    docker images | grep -v '<none> *<none>' | grep "$1"
  fi
}

function drm () {
  if [[ "$1" == "" ]]; then
    echo "drm container-name"
  else
    docker stop -t 1 $@; docker rm $@;
  fi
}

alias bd=boot2docker
alias db='docker build'
