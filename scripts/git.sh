#!/bin/bash

info 'Installing git...'

apt install -y git
git_version=$(git --version)

info 'Setting Git username and emails...'

git config --global user.email "contato.rdev@gmail.com"
git config --global user.name "Rafael Carvalho Monteiro"

info 'Setting git branch in terminal'

export PS1="[\u@\h \W]\[\033[00;32m\]\$(git_branch)\[\033[00m\]\$ "

success "Git installed with version ${git_version}"