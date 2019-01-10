#!/bin/bash
sudo apt-get update
sudo apt-get install  apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -echo "https://apt.dockerproject.org/repoubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install  docker-ce
sudo cp ./daemon.json  /etc/docker/