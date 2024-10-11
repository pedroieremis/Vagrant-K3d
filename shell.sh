#!/bin/bash

# Atualizar lista de pacotes
apt update

# Instala alguns pacotes, sem pedir confirmação
apt install vim ssh sudo curl htop -y

# Baixa e instala o Docker
curl -sSLkf https://get.docker.com | bash

# Baixa, instala e configura o Kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Baixa, instala e provisiona o K3d, definindo as portas 80, 443 e 8080 para ser acessível externamente
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
k3d cluster create mycluster --port "80:80@loadbalancer" --port "443:443@loadbalancer" --port "8080:8080@loadbalancer"
