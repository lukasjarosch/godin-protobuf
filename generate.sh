#!/usr/bin/env bash

# This script creates go stubs of all proto files. It will also generate the HTTP gateway as well as the swagger spec

PROTO_ROOT=$(pwd)
FILES=$(find ${PROTO_ROOT} -type f -name "*.proto")

for proto in $FILES ; do
    protoc -I$GOPATH/src \
        -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway \
        -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
        --proto_path=${PROTO_ROOT} \
        --go_out=paths=source_relative,plugins=grpc:. \
        --grpc-gateway_out=logtostderr=true,paths=source_relative:. \
        --swagger_out=logtostderr=true:. \
        "$proto"
    echo "DONE!"
done
