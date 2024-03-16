#!/bin/bash

# install docker scout to scan the image for vulnerabilities
if ! command -v docker scout >& null; then
	echo "=====================Installing docker scout==============================="
	curl -sSfL https://raw.githubusercontent.com/docker/scout-cli/main/install.sh | sh -s --
fi

# run the docker containers
echo "=======================Running the containers======================"
docker-compose up -d

# run the docker scout to scan the image
image_id=$(docker images --format "{{.ID}}" project2-backend)
echo "======================Scanning the image==========================="
docker scout cves "$image_id"
