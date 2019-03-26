#!/bin/bash

scripts_path='./scripts'
functions_path='./functions'

chmod -R +x ${scripts_path}
chmod -R +x ${functions_path}

. ${functions_path}/export.sh

info "Welcome to Rafael Carvalho's environment configuration! We will proceed with the instalations."

#Updating apt modules
info "Updating apt modules..."
apt update && apt upgrade
success "Finished updating!"

#Installing NodeJS
. ${scripts_path}/node.sh

#Installing Git
. ${scripts_path}/git.sh

#Installing Webstorm
. ${scripts_path}/webstorm.sh


success "Done!"

