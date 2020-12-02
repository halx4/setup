#!/usr/bin/env bash

# install docker
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
# apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo usermod -aG docker ${USER}


#install docker compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# install nodejs
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.35.3/install.sh -o install_nvm.sh
bash install_nvm.sh
source ~/.profile
nvm install 14.15.1
nvm use 14.15.1

# install aws cli
sudo apt-get update 
sudo apt-get install python-pip -y
pip install awscli

# clone
#git clone https://github.com/halx4/redash.git
#cd redash/