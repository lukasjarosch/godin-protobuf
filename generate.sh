#!/usr/bin/env bash

# example for greeter, to be refined

# generate GO stubs from proto file
protoc \
		-I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway \
    -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
    --proto_path=. \
		--go_out=plugins=grpc:. \
		./greeter/greeter.proto

# generate grpc HTTP gateway from proto file
protoc \
		-I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway \
    -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		--proto_path=. \
    --grpc-gateway_out=logtostderr=true:. \
     ./greeter/greeter.proto

# generate swagger spec of the generated HTTP gateway
protoc \
    -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway \
    -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		--proto_path=. \
    --swagger_out=logtostderr=true:. \
    ./greeter/greeter.proto
