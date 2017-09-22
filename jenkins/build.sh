#!/usr/bin/env bash

set -e

function section_print {
    echo "=== $* ==="
}

echo "======================="
echo "GIT_BRANCH: $GIT_BRANCH"
echo "ghprbPullId: $ghprbPullId"
echo "sha1: $sha1"
echo "ghprbActualCommit: $ghprbActualCommit"
echo "ghprbTargetBranch: $ghprbTargetBranch"
echo "ghprbSourceBranch: $ghprbSourceBranch"
echo "ghprbPullAuthorEmail: $ghprbPullAuthorEmail"
echo "ghprbPullDescription: $ghprbPullDescription"
echo "ghprbPullTitle: $ghprbPullTitle"
echo "ghprbPullLink: $ghprbPullLink"
echo "======================="


section_print "Building"

./gradlew clean aStaging aProd