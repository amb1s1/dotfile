#!/bin/bash
if command -v apt-get >/dev/null; then
    sudo apt install -y protobuf-compiler
elif command -v yum >/dev/null; then
  echo "foo"
else
  echo "baz"
fi
go get google.golang.org/protobuf/cmd/protoc-gen-go
go get google.golang.org/grpc/cmd/protoc-gen-go-grpc
