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

# upgrade os
# # need to upgrade major version via the same base os first
# # ex. bump v17 to v18 on bookworm, then while on v18, upgrade os from bookworm to trixie
sd bookworm trixie postgres.yaml
kubectl apply -f postgres.yaml
