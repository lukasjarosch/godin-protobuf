#!/usr/bin/env bash

docker run --rm --user travis:travis -v $(pwd):/work uber/prototool:latest prototool $@
