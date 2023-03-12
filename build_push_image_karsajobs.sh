#! /bin/bash
# membuat image dari Dockerfile 
docker build -t ghcr.io/dhichii/karsajobs:latest .

# login ke GitHub Packages
echo $CR_PAT | docker login ghcr.io -u dhichii --password-stdin

# mengunggah image ke GitHub Packages
docker push ghcr.io/dhichii/karsajobs:latest