#!/usr/bin/env bash

info 'Installing pip for python3...'

apt install -y python3-pip

info 'Installing additional libraries...'
apt install -y build-essential libssl-dev libffi-dev python3-dev
apt install -y python3-venv

info 'Installing venv to manage virtual environments'
apt install -y python3-venv

success 'Python tools installed sucessfuly!'