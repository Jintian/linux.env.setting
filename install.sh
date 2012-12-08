#!/bin/bash

cp bash_profile ~/.bash_profile
cp inputrc ~/.inputrc
cp screenrc ~/.screenrc
cp ssh/config ~/.ssh/


if [ ! -d ~/.local/bin ]; then
	mkdir -p ~/.local/bin
fi
cp bashmarks.sh ~/.local/bin/
cp -r maven ~/.local/bin/
cp ssh/sshx ~/.local/bin/
cp git-completion.bash ~/.local/bin/
cp vim/vimrc ~/.vimrc

if [ ! -d ~/.vim ]; then
	mkdir ~/.vim
fi
cp -r vim/bundle ~/.vim/
chmod +x ~/.local/bin/*
