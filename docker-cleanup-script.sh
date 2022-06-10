#!/bin/bash
#
# Author: Outhan Chazima 
# Date : 10-June-2022
# Description : The script will clean/remove all docker container/images/volumes-
#

# stop all running containers
echo '####################################################'
echo 'Checking for any running containers...stopping containers'
docker stop $(docker ps -aq)

# remove all stopped containers
echo '####################################################'
echo 'Removing containers ...'
docker rm $(docker ps -aq)


# remove all images
echo '####################################################'
echo 'Removing images ...'
docker rmi $(docker images -q)

# remove all stray volumes if any
echo '####################################################'
echo 'Revoming docker container volumes (if any)...'
docker volume rm $(docker volume ls -q)
