#!/bin/bash
GOVERSION=go1.15.8.linux-amd64.tar.gz
PB_REL="https://github.com/protocolbuffers/protobuf/releases"
if command -v apt-get >/dev/null; then
    sudo apt-get install protobuf-compiler autoconf automake libtool curl make g++ unzip -y
elif command -v yum >/dev/null; then
  echo "foo"
else
  echo "baz"
fi
curl -fLo ~/protoc-3.13.0-linux-x86_64.zip $PB_REL/download/v3.13.0/protoc-3.13.0-linux-x86_64.zip
unzip ~/protoc-3.13.0-linux-x86_64.zip -d ~/.local
echo "PATH=$PATH:$HOME/.local/bin" >> ~/simple-dotfiles/zshrc
