#!/bin/bash
sudo apt install -y protobuf-compiler
go get google.golang.org/protobuf/cmd/protoc-gen-go
go get google.golang.org/grpc/cmd/protoc-gen-go-grpc
