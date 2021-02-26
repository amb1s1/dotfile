#!/bin/bash
GOVERSION=go1.15.8.linux-amd64.tar.gz
sudo apt-get install autoconf automake libtool curl make g++ unzip -y
curl -fLo ~/$GOVERSION https://golang.org/dl/$GOVERSION
sudo tar -C /usr/local -xzf ~/$GOVERSION
