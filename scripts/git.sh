#!/bin/bash

info 'Installing git...'

apt install -y git
git_version=$(git --version)

info 'Setting Git username and emails...'

git config --global user.email "contato.rdev@gmail.com"
git config --global user.name "Rafael Carvalho Monteiro"

success "Git installed with version ${git_version}"