#!/usr/bin/env bash

# apt-get update && apt install -y sl
apt update && apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    git-core \
    software-properties-common
curl -fsSL get.docker.com | sh
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
# add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# apt-get update && apt-get install -y docker-ce docker-compose
# curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` -o /usr/bin/docker-compose