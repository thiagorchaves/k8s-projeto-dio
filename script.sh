#!/bin/bash

echo "Criando as imagens..."

docker build -t thiagorc/backend:1.0 backend/.
docker build -t thiagorc/database:1.0 database/.

echo "Subindo as imagens..."

docker push thiagorc/backend:1.0
docker push thiagorc/database:1.0

echo "Criando serviços para o cluster k8s..."

kubectl apply -f ./services.yml

echo "Realizando deploy..."

kubectl apply -f ./deployment.yml
