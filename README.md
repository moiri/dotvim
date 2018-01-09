dotvim
======

My vim configuration. It was originally forked from
https://github.com/romainl/dotvim

Now it is composed mostly of submodules and a commented vimrc file. The fancy
keymappings in vimrc are all the work of https://github.com/romainl/dotvim

Installation
------------
In a shell type the following commands

    git clone git@github.com:moiri/dotvim.git ~/.vim
    cd ~/.vim
    git submodule update --init --recursive
    cd ~/.vim/bundle/youCompleteMe
    python3 install.py --clang-completer --js-completer --cs-completer --system-libclang

To install the **youCompleteMe** bundle with the given flags you will need the
following packages

    sudo apt install cmake clang python3-dev mono-complete nodejs npm

For typescript support

    sudo npm install -g typescript

Some submodules will have untracked content due to missing .gitignore files. The
missing files can be added to a local branch (in each submodule) to prevent the
changes from showing up.

To work properly with tags you will need to install the package

    sudo apt install exuberant-ctags

Install the **powerline** for vim:

    sudo apt install powerline vim-nox
    wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
    mv PowerlineSymbols.otf ~/.fonts/
    fc-cache -vf ~/.fonts/
    mkdir -p ~/.config/fontconfig/fonts.conf
    mv 10-powerline-symbols.conf ~/.config/fontconfig/fonts.conf/
