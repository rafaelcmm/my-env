#!/usr/bin/env bash

info 'Installing main JS frameworks!'

info 'Installing Angular-CLI'
npm install -g @angular/cli

info 'Installing React-CLI'
npm install -g create-react-app

info 'Installing React Native'
npm install -g expo-cli --unsafe-perm=true

success 'Frameworks installed!'