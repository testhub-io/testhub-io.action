#!/bin/sh -l

echo "Pattern from action $1"

/testhub-cli upload -o test-org -p cli-test -f $1 -b $GITHUB_RUN_NUMBER -r $GITHUB_WORKSPACE

time=$(date)
echo "::set-output name=time::$time"

