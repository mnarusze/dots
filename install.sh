#!/bin/bash

# Git config
git_mail=maciej.naruszewicz@intel.com

################################################

# Install vim-plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install solarized plugin for vim
curl -fLo ~/.vim/colors/solarized.vim --create-dirs \
        https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim

# Install solarized dircolors
curl -fLo ~/.dircolors \
        https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-light

# Copy all dot files
for file in $(ls -A $(dirname $0)/files) ; do
    echo "Installing $file"
    ln -fs $(pwd)/files/$file $HOME/$file
done

# Setup git aliases
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.type 'cat-file -t'
git config --global alias.dump 'cat-file -p'
git config --global user.name "Maciej Naruszewicz"
git config --global user.email "$git_mail"

# Set vim as the default text editor for git
git config --global core.editor "vim"

# Clone VBoxManage bash completion
if [ ! -d ../vboxmanage-bash-completion ] ; then
    git clone https://github.com/gryf/vboxmanage-bash-completion ../vboxmanage-bash-completion
fi

sudo cp -f ../vboxmanage-bash-completion/VBoxManage /etc/bash_completion.d/

