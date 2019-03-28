#!/bin/sh

echo "> uninstall: pre-commit"
unlink $(pwd)/.git/hooks/pre-commit
