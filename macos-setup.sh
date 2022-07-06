#!/bin/bash

chsh -s /bin/bash
echo "export BASH_SILENCE_DEPRECATION_WARNING=1" >> ~/.bash_profile

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew upgrade

brew install git

git config --global user.name "name"
git config --global user.email "email"

mkdir ~/.ssh
touch ~/.ssh/config

printf "Host *\nAddKeysToAgent yes\nUseKeychain yes\nIdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config

ssh-keygen -t ed25519 -C "email"
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519

#use pbcopy < ~/.ssh/id_ed25519.pub and add it to the SSH keys in your github account

mkdir ~/source
git clone git@github.com:ianjones834/workstation-setup.git ~/source

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

source ~/.bash_profile

brew install --cask rectangle
brew install --cask docker
brew install neovim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#copy the .vimrc file to ~/ and run :PlugInstall in vim
