#!/bin/bash
GOVERSION=go1.15.8.linux-amd64.tar.gz
if command -v apt-get >/dev/null; then
    sudo apt-get install autoconf automake libtool curl make g++ unzip -y
elif command -v yum >/dev/null; then
  echo "foo"
else
  echo "baz"
fi
curl -fLo ~/$GOVERSION https://golang.org/dl/$GOVERSION
sudo tar -C /usr/local -xzf ~/$GOVERSION
