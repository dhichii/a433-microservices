#! /bin/bash
# membuat image bernama item-app dengan tag v1 dari Dockerfile 
docker build -t item-app:v1 .

# menampilkan daftar image
docker image ls

# mengubah nama agar sesuai dengan standar GitHub Packages
docker image tag item-app:v1 ghcr.io/dhichii/item-app:v1

# menghapus image lama
docker rmi item-app:v1

# login ke GitHub Packages
echo $CR_PAT | docker login ghcr.io -u dhichii --password-stdin

# mengunggah image ke GitHub Packages
docker push ghcr.io/dhichii/item-app:v1