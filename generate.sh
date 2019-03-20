#!/usr/bin/env bash

# This script creates go stubs of all proto files. It will also generate the HTTP gateway as well as the swagger spec

PROTO_ROOT=$(pwd)

for dir in $PROTO_ROOT/*/ ; do
    echo -n "=> '$(basename ${dir})' ... "

    pushd $dir > /dev/null

    protoc -I$GOPATH/src \
        -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway \
        -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
        --proto_path=. --go_out=plugins=grpc:. *.proto

    mkdir -p $dir/gateway
    protoc -I$GOPATH/src \
        -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway \
        -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
        --proto_path=. --grpc-gateway_out=logtostderr=true:./gateway/ *.proto

    mkdir -p $dir/swagger
    protoc -I$GOPATH/src \
        -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway \
        -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
        --proto_path=. --swagger_out=logtostderr=true:./swagger/ *.proto
    echo "DONE!"

    popd > /dev/null
done
