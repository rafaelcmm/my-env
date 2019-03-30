#!/bin/bash

info 'Verifying node instalation'
is_chrome_installed=$(dpkg -l | grep -E '' | grep nodejs)
if [[ ! -z "${is_chrome_installed}" && "${is_chrome_installed}" != " " ]]; then
    warning 'NodeJS is already installed!'
else
    info 'Installing latest NodeJS...'

    curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
    apt install -y nodejs

    node_version=$(nodejs --version)
    npm_version=$(npm --version)

    success "Node installer successfuly with version ${node_version} and npm with version ${npm_version}"
fi
