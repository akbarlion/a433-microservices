# !/bin/bash

# build docker image
echo "build docker image"
docker build -t akbrln/karsajobs:latest .

# mengubah nama image
echo "mengubah nama image"
docker tag akbrln/karsajobs:latest ghcr.io/akbarlion/akbrln/karsajobs:latest

# login ke github package
echo "login ke ghcr"
echo "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" | docker login ghcr.io -u akbarlion --password-stdin

# push ke github package
echo "push ke github package"
docker push ghcr.io/akbarlion/akbrln/karsajobs:latest

# cek kembali daftar images
echo "cek kembali daftar images"
docker image ls


