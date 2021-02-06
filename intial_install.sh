#!/bin/bash
USER=$(whoami)
if command -v apt-get >/dev/null; then
	sudo apt-get install git zsh wget curl vim tmux -y
elif command -v yum >/dev/null; then
	sudo yum install git zsh wget curl vim -y
else
  echo "I have no Idea what im doing here"
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sudo chsh -s $(which zsh) $USER
git clone https://github.com/lifepillar/vim-solarized8.git ~/.vim/pack/themes/opt/solarized8
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sleep 3
touch ~/.vimrc
touch ~/.tmux.conf
touch ~/.zshrc
ln -sf ~/dotfile/vimrc ~/.vimrc
ln -sf ~/dotfile/tmux.conf ~/.tmux.conf
ln -sf ~/dotfile/zshrc ~/.zshrc
vim +PluginInstall +qall
source ~/.zshrc
