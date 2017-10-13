#!/usr/bin/env bash

set -e

# First build project
./jenkins/build.sh

# Then sign and upload to Tryouts.io
./jenkins/sign-and-upload.sh
