#!/bin/bash

# build docker image dengan dockerfile
docker build -t item-app:v1 .

# print enter untuk memberikan jarak
echo "\n"

# print daftar image di local
docker images

# rename image untuk sesuai dengan format Github Packages
docker tag item-app:v1 ghcr.io/stevan11leonardy/item-app:v1

# push image to github packages
docker push ghcr.io/stevan11leonardy/item-app:v1