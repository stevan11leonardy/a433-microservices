#!/bin/bash

# build docker image dengan dockerfile
docker build -t karsajobs:latest .

# print enter untuk memberikan jarak
echo '\n'

# print daftar image di local
docker images

# print enter untuk memberikan jarak
echo '\n'

# rename image untuk sesuai dengan format Github Packages
docker tag karsajobs:latest ghcr.io/stevan11leonardy/karsajobs:latest

# push image to github packages
docker push ghcr.io/stevan11leonardy/karsajobs:latest