#!/bin/bash

docker rm -f kube8-app
docker rmi kube8-app
docker build -t kube8-app .
docker tag kube8-app anupisdeveloper/kube8-app
