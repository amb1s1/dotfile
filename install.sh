#!/bin/bash
USER=$(whoami)
if command -v apt-get >/dev/null; then
	sudo apt-get update
	sudo apt install software-properties-common zsh curl tmux tar nodejs -y
	sudo add-apt-repository ppa:neovim-ppa/stable 
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.lis
    sudo apt update
    sudo apt install neovim yarn -y
elif command -v yum >/dev/null; then
	sudo yum install git zsh wget curl vim tmux tar -y
else
  echo "I have no Idea what im doing here"
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sleep 1s
sudo chsh -s $(which zsh) $USER
git clone https://github.com/lifepillar/vim-solarized8.git ~/.vim/pack/themes/opt/solarized8
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sleep 1s
mkdir -p ~/.nvim
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
touch ~/.tmux.conf
touch ~/.zshrc
ln -sf ~/.vim ~/.nvim
ln -sf ~/simple-dotfiles/vimrc ~/.config/nvim/init.vim
ln -sf ~/simple-dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/simple-dotfiles/zshrc ~/.zshrc
vim +PluginInstall +qall
zsh
vim +PluginUpdate +qall

