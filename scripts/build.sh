#!/usr/bin/env bash
REPO="git@github.com:lukasjarosch/godin-api-go"
REPO_PATH="$(pwd)/godin-api-go"

GEN_PATH="$(pwd)/gen/go"

function clone() {
	rm -rf "$REPO_PATH"
	echo "Cloning into repo: $REPO"
	git clone $REPO "$REPO_PATH"
}

function copyStubs() {
	echo "FROM $GEN_PATH/*"
	echo "TO $REPO_PATH/"
	cp -R $GEN_PATH/* $REPO_PATH/
}

function commitAndPush() {
	enterDir $1

	git add -N .

	if ! git diff --no-ext-diff --quiet --exit-code; then
		git add .
		git status
		git commit -m "Automatic generation of Go protobuf stubs"
		git push origin HEAD
	else
		echo "No changes detected for $1"
	fi

	leaveDir
}

function clone() {
	rm -rf "$REPO_PATH"
	echo "Cloning into repo: $REPO"
	git clone $REPO "$REPO_PATH"
}

# Helper for adding a directory to the stack and echoing the result
function enterDir {
  pushd $1 > /dev/null
}

# Helper for popping a directory off the stack and echoing the result
function leaveDir {
  popd > /dev/null
}

# Generate all protobuf stubs (currently only Go)
$(which prototool) generate
clone
copyStubs
commitAndPush $REPO_PATH

# remove all generated stuff, no need to keep it in this repo
rm -rf $GEN_PATH
