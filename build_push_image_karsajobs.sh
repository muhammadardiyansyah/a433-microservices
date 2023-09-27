#!/bin/bash

# Menginisilisasi nama Docker image yang akan dibuat
IMAGE_NAME="karsajobs:latest"

# Build Docker image dari Dockerfile di direktori saat ini
echo "Membuat Docker image"
docker build -t $IMAGE_NAME .

# Waiting for next commmand
sleep 5
echo " "

# mengubah nama image agar sesuai dengan format Github Packages
echo "mengubah nama image sesuai Github Packages"
docker tag karsajobs:latest ghcr.io/muhammadardiyansyah/karsajobs:latest

# Waiting for next commmand
sleep 5
echo " "

# Login ke GitHub Package
echo "Login ke Github Packages"
export CR_PAT=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
echo $CR_PAT | docker login ghcr.io -u muhammadardiyansyah --password-stdin

# Waiting for end commmand
sleep 5
echo " "

# Push image ke GitHub Package
echo "Mengunggah image ke Github Packages"
docker push ghcr.io/muhammadardiyansyah/karsajobs:latest

# Waiting for end commmand
sleep 5
echo " "
