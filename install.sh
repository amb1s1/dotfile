#!/bin/bash
USER=$(whoami)
if command -v apt-get >/dev/null; then
	sudo apt-get update
	sudo apt install software-properties-common zsh curl tmux tar nodejs fonts-powerline -y
	sudo add-apt-repository ppa:neovim-ppa/stable 
    	sudo apt update
    	sudo apt install neovim yarn -y
elif command -v yum >/dev/null; then
	sudo yum install git zsh wget curl vim tmux tar -y
else
  echo "I have no Idea what im doing here"
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sleep 1s
git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt
ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom//themes/spaceship.zsh-theme
sudo chsh -s $(which zsh) $USER
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sleep 1s
mkdir -p ~/.nvim
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
touch ~/.config/nvim/coc-settings.json
touch ~/.tmux.conf
touch ~/.zshrc
ln -sf ~/.vim ~/.nvim
ln -sf ~/simple-dotfiles/vimrc ~/.config/nvim/init.vim
ln -sf ~/simple-dotfiles/coc-settings.json ~/.config/nvim/coc-settings.json
ln -sf ~/simple-dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/simple-dotfiles/zshrc ~/.zshrc
zsh
