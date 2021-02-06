#!/bin/bash

if command -v apt-get >/dev/null; then
	apt-get install git zsh wget curl vim -y
elif command -v yum >/dev/null; then
	yum install git zsh wget curl vim -y
else
  echo "I have no Idea what im doing here"
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/lifepillar/vim-solarized8.git ~/.vim/pack/themes/opt/solarized8
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sf ~/dotfile/vimrc ~/.vimrc
ln -sf ~/dotfile/tmux.conf ~/.tmux.conf
ln -sf ~/dotfile/zshrc ~/.zshrc
