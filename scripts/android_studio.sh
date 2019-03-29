#!/usr/bin/env bash

info 'Installing JDK...'

apt install -y default-jdk

success 'JDK Installed sucessfuly!'

info 'Installing android studio...'

snap install android-studio

success 'Android Studio Installed sucessfuly!'