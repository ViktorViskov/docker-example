#!/usr/bin/sh
if [ $1 ]
then
    docker container stop $1-container
    docker container rm $1-container
    docker image rm $1-image
else
    echo "Project name missed"
    echo "Usage:"
    echo 'delete.sh project-name'
fi