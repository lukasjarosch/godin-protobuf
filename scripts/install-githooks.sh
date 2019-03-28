#!/bin/sh

echo "> install: pre-commit"
ln -fs $(pwd)/scripts/pre-commit.sh $(pwd)/.git/hooks/pre-commit
