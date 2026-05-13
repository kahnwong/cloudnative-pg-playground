#!/bin/bash

kubectl create secret generic my-user-secret \
	--type=kubernetes.io/basic-auth \
	--from-literal=username='pguser' \
	--from-literal=password='postgrespassword' \
	--namespace default
