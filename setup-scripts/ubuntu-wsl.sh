#Follow ubuntu's wsl instructions and docker setup for wsl
#https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview
#https://docs.docker.com/desktop/windows/wsl/#:~:text=The%20docker%20CLI%20and%20UI,both%20v1%20or%20v2%20mode.

git config --global user.name "Ian Jones"
git config --global user.email "email"

mkdir ~/.ssh
touch ~/.ssh/config

printf "Host *\nAddKeysToAgent yes\nUseKeychain yes\nIdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config

ssh-keygen -t ed25519 -C "email"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub
#copy/paste output into github account

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

mkdir ~/source
git clone git@github.com:ianjones834/workstation-setup.git ~/source

source ~/.bashrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#copy the .vimrc file to ~/ and run :PlugInstall in vim