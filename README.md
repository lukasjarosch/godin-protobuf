# microservice-structure-protobuf
 > Central repo to hold all protobuf definitions and generated swagger specs
 
### Styleguide

This repository uses the [Uber Protobuf Styleguide v2](https://github.com/uber/prototool/blob/dev/style/README.md).
It's enforced by using uber's [prototool](https://github.com/uber/prototool) which also takes care of creating
and generating the protobuf stubs.

### Git hooks
To setup the git-hooks, run `./scripts/install-githooks.sh` from the repository root.
You can remove them by running `./scripts/uninstall-githooks.sh`.

### Quickstart
You need to have *prototool* installed and set-up.

`prototool lint` will run the uber2 linter
`prototool generate` will generate all protobufs into `./gen/`
`prototool create godin/<package>/<subpackage>/<version>/<subpackage>.proto` to create a new protobuf file

> I highly suggest that you read through the uber styleguide. Even if you do not want to use them, they
provide some nice insights and tips which you might find helpful