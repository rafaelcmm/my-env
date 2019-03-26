#!/bin/bash

info 'Preparing Webstorm instalation...'

apt install -y snapd snapd-xdg-open

info 'Installing latest Webstorm...'

snap install webstorm --classic

success 'Webstorm successfuly installed!'
