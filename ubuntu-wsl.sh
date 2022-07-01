git config --global user.name "Ian Jones"
git config --global user.email ianjones834@protonmail.com

mkdir ~/.ssh
touch ~/.ssh/config

printf "Host *\nAddKeysToAgent yes\nUseKeychain yes\nIdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config

ssh-keygen -t ed25519 -C ianjones834@protonmail.com
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