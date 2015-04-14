#Boot2Docker stuff
export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST="tcp://192.168.59.104:2376"

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
alias bd=boot2docker
alias db='docker build'
