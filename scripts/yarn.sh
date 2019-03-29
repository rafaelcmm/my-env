#!/usr/bin/env bash

info 'Configuring yarn repository...'

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

info 'Installing yarn...'

apt update
apt install -y yarn
yarn_version=$(yarn -v)

success "Yarn installed sucessfuly in version ${yarn_version}!"