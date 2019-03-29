#!/bin/bash
info 'Verifying chrome instalation'
is_chrome_installed=$(dpkg -l | grep -E '' | grep google-chrome-stable)
if [[ ! -z "${is_chrome_installed}" && "${is_chrome_installed}" != " " ]]; then
    warning 'Chrome is already installed!'
else
    info 'Installing Google Chrome'
    info 'Adding repository to list'
    sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    echo 'OK'

    info 'Downloading Google Chrome'
    wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

    info 'Updating apt'
    apt update

    info 'Installing Google Chrome'
    apt install -y google-chrome-stable

    success "Google Chrome installed!"
fi




