#!/usr/bin/env bash
info 'Verifying yarn instalation'
is_yarn_installed=$(dpkg -l | grep -E '' | grep yarn)
if [[ ! -z "${is_yarn_installed}" && "${is_yarn_installed}" != " " ]]; then
    warning 'Yarn is already installed!'
else
    info 'Configuring yarn repository...'

    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

    info 'Installing yarn...'

    apt update
    apt install -y yarn
    yarn_version=$(yarn -v)

    success "Yarn installed sucessfuly in version ${yarn_version}!"
fi
