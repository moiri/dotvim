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
    ./install.sh --clang-completer
    cd ~/.vim/bundle/tern
    npm install

Some submodules will have untracked content due to missing .gitignore files. The
missing files can be added to a local branch (in each submodule) to prevent the
changes from showing up.

To install the **youCompleteMe** bundle you will need the *cmake* and
*python-dev* packages.

To install the **tern** bundle you will need the *npm* package.

To work with tags properly you will need to install the *ctags* package

Install **powerline**:

    sudo apt-get install powerline
    wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
    mv PowerlineSymbols.otf ~/.fonts/
    fc-cache -vf ~/.fonts/
    mkdir -p ~/.config/fontconfig/fonts.conf
    mv 10-powerline-symbols.conf ~/.config/fontconfig/fonts.conf/
