#!/usr/bin/env bash

# This script creates go stubs of all proto files. It will also generate the HTTP gateway as well as the swagger spec

PROTO_ROOT=$(pwd)

for dir in $PROTO_ROOT/*/ ; do
    echo -n "=> '$(basename ${dir})' ... "

    pushd $dir > /dev/null

    mkdir -p swagger gateway

    protoc -I$GOPATH/src \
        -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway \
        -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
        --proto_path=. \
        --go_out=paths=source_relative,plugins=grpc:. \
        --grpc-gateway_out=logtostderr=true,paths=source_relative:./gateway/ \
        --swagger_out=logtostderr=true:./swagger/ \
        *.proto
    echo "DONE!"

    popd > /dev/null
done
