#!/usr/bin/sh
if [ $1 ]
then
    docker build -t $1-image .
    docker run -tid --name $1-container $1-image
else
    echo "Project name missed"
    echo "Usage:"
    echo 'deploy.sh project-name'
fi