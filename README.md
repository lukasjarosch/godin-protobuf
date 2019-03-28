# godin-protobuf
 > Central repo to hold all protobuf definitions 
 
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


### General workflow
To illustrate a general workflow I will use a simple example.
Imagine you want to create a `mail` service. 


1) Create `godin/mail/v1beta1/` folders. Always start out with a beta package first until the API stabilizes.
2) Generate a protobuf which holds general datastructures like enums (your domain models) using `prototool create godin/mail/v1beta1/mail.proto`
3) For each service, generate a new proto file. We only want to expos the api using one service, so: `prototool create godin/mail/v1beta1/mail_api.proto`
4) Define your API, work on the service implementing it, refine the api, ... rinse and repeat
5) During that process you might hit on a major breaking change. Maybe that would be a good time to create a `v1beta2` package
6) goto: 4
7) Once your API has stabilized, create a release package `v1` and remove all dependencies to beta packages (the linter will nag at you if you don't)
8) Your API should now be stable and can  be deployed to production
