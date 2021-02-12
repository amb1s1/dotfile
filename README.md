
```
\______ \   _____/  |\_   _____/|__|  |   ____   ______
 |    |  \ /  _ \   __\    __)  |  |  | _/ __ \ /  ___/
 |    `   (  <_> )  | |     \   |  |  |_\  ___/ \___ \ 
/_______  /\____/|__| \___  /   |__|____/\___  >____  >
        \/                \/                 \/     \/
```

# Simple Dotfiles
Create this simple dotfiles to be use on linux.
**Tested** On:
    1. Ubuntu 18.04 
    2. Ubuntu 20.04 

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
git clone https://github.com/amb1s1/simple-dotfiles.git ~/ ; cd ~/simple-dotfiles
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

### Test your install 
#### Get the example code
The example code is part of the grpc-go repo.

##### Download the repo as a zip file and unzip it, or clone the repo:

    $ git clone -b v1.35.0 https://github.com/grpc/grpc-go

##### Change to the quick start example directory:

    $ cd grpc-go/examples/helloworld

#### Run the example

From the examples/helloworld directory:

Compile and execute the server code:

    $ go run greeter_server/main.go

From a different terminal, compile and execute the client code to see the client output:

    $ go run greeter_client/main.go
        Greeting: Hello world

Congratulations! You’ve just run a client-server application with gRPC.


