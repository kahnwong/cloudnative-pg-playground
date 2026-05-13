#!/bin/bash

echo "Ideally you should run this by hand"

# init
kubectl apply -f postgres.yaml

# bump minor version
sd 17.8 17.9 postgres.yaml
kubectl apply -f postgres.yaml

# bump major version
sd 17.9 18.2 postgres.yaml
kubectl apply -f postgres.yaml
