#!/bin/sh -l

echo "Hello $1"

/testhub-cli upload -o test-org -p cli-test -f **/TEST-com.mkyong.examples.TestMessageBuilder.xml -b $GITHUB_RUN_NUMBER -r $GITHUB_WORKSPACE

time=$(date)
echo "::set-output name=time::$time"

