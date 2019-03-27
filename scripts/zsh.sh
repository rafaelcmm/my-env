#!/bin/bash

info 'Installing zsh...'

apt install -y zsh
apt install -y powerline fonts-powerline

info 'Cloning oh-my-zsh configuration...'
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

info 'Cloning syntax highlighting configuration'
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

info 'Changing default shell...'
chsh -s /bin/zsh

info 'Installing Terminator'
apt install -y terminator

success "Zsh + Terminator installed!"