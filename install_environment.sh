#!/bin/bash

scripts_path='./scripts'
functions_path='./functions'

chmod -R +x ${scripts_path}
chmod -R +x ${functions_path}

. ${functions_path}/export.sh

info "Welcome to Rafael Carvalho's environment configuration! We will proceed with the instalations."

#Updating apt modules
info "Updating apt modules..."

apt update && apt upgrade -y

success "Finished updating!"

#Installing ZSH
. ${scripts_path}/zsh.sh

#Installing Xclip
. ${scripts_path}/xclip.sh

#Installing CURL
. ${scripts_path}/curl.sh

#Installing NodeJS
. ${scripts_path}/node.sh

#Installing Yarn
. ${scripts_path}/yarn.sh

#Installing Git
. ${scripts_path}/git.sh

#Installing Webstorm
. ${scripts_path}/webstorm.sh

#Installing Google Chrome
. ${scripts_path}/google_chrome.sh

#Installing Android Studio
. ${scripts_path}/android_studio.sh

#Installing Postman
. ${scripts_path}/postman.sh

#Installing Python
. ${scripts_path}/python.sh

#Installing Slack
. ${scripts_path}/slack.sh

#Installing Telegram
. ${scripts_path}/telegram.sh

#Installing React, React Native and Angular
. ${scripts_path}/main_js_frameworks.sh

success "Done!"

