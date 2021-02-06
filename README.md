\______ \   _____/  |\_   _____/|__|  |   ____   ______
 |    |  \ /  _ \   __\    __)  |  |  | _/ __ \ /  ___/
 |    `   (  <_> )  | |     \   |  |  |_\  ___/ \___ \ 
/_______  /\____/|__| \___  /   |__|____/\___  >____  >
        \/                \/                 \/     \/
======================================================
# Amb1s1 Simple Dotfiles
## Installation
#### Install Git
##### On a Debian-based distribution, such as Ubuntu, try apt:
```
sudo apt-get install git-all
```

##### RPM-based distribution, such as RHEL or CentOS), you can use dnf
```
sudo dnf install git-all
```
or
```
sudo yum install git-all
```

#### Run the following lines(Make)
```
git clone https://github.com/amb1s1/dotfiles.git ~/ ; cd ~/dotfiles
./install.sh
```

This will modifY:
1. vimrc
2. tmux
3. base16

If you want to change your terminal them type:

`base16` and then tab to see all the available teams.


This will change your theme in the terminal and vim.

If you see a `VIM` error not finding a THEME, do the following:

1. Open VIM (no need to specify a file name)
2. type `shift+:` and type `PluginUpdate` enter


