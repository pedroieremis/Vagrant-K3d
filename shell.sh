#!/bin/bash

apt update

apt install vim ssh sudo curl htop -y

curl -sSLkf https://get.docker.com | bash

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
k3d cluster create mycluster --port "80:80@loadbalancer" --port "443:443@loadbalancer" --port "8080:8080@loadbalancer"
