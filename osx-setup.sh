#!/bin/bash

chsh -s /bin/bash
echo "export BASH_SILENCE_DEPRECATION_WARNING=1" >> ~/.bash_profile

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git

git config --global user.name "Ian Jones"
git config --global user.email ianjones834@protonmail.com

mkdir ~/.shh
touch ~/.ssh/config

printf "Host *\nAddKeysToAgent yes\nUseKeychain yes\nIdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config

ssh-keygen -t ed25519 -C ianjones834@protonmail.com
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_ed25519

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

git clone git@github.com:ianjones834/workstation-setup.git
mv ~/workstation-setup.git ~/source

source ~/.bash_profile

brew install --cask shiftit
brew install --cask visual-studio-code