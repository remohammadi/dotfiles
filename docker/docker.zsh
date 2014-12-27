#Boot2Docker stuff
export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST="tcp://192.168.59.103:2376"

function drit() {
	docker run -it "$1" /bin/bash
}

function de() {
	container_id=`docker ps | grep -v 'CONTAINER' | head -1 | awk '{print $1}'`
	docker exec -it $container_id /bin/bash
}

alias dps='docker ps'

function dockerstop () {
	container_id=`docker ps | grep -v 'CONTAINER' | head -1 | awk '{print $1}'`
	docker stop ${container_id}
}

function docker-ip() {
  boot2docker ip 2> /dev/null
}

function dimagess () {
  docker images | grep -v '<none>                    <none>' | head -20
}