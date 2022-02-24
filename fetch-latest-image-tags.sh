#!/bin/bash

IMAGE_NAME=$(curl -L -s 'https://registry.hub.docker.com/v2/repositories/'$1'/tags?page_size=1' | jq -r '.results[0].name')
echo $1:$IMAGE_NAME

