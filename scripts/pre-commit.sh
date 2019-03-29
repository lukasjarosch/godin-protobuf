#!/usr/bin/env bash

PROTOTOOL=$(which prototool)

# Define colors
RED='\033[0;31m'
CYAN='\e[96m'
NC='\033[0m'

HAS_ERR=false

# linting errors
lines=$($PROTOTOOL lint)
for line in "$lines";
do
	if [ "$line" != "" ]; then
        echo -e "$line"
        HAS_ERR=true
	fi
done


# check for breaking changes
lines=$($PROTOTOOL break check)
for line in "$lines";
do
	if [ "$line" != "" ]; then
        echo -e "> ${RED}BREAKING CHANGE${NC}: $line"
        HAS_ERR=true
	fi
done

# abort commit on error
if [ $HAS_ERR = true ]; then
        echo -e "\n> Fix all errors and then commit again"
        exit 1
fi

exit 0
