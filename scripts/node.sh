#!/bin/bash

info 'Installing latest NodeJS...'

apt install -y nodejs
apt install -y npm

node_version=$(nodejs --version)
npm_version=$(npm --version)

success "Node installer successfuly with version ${node_version} and npm with version ${npm_version}"
