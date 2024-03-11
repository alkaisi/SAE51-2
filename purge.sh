docker rm --force $(docker ps -aq)

docker rmi $(docker images)
