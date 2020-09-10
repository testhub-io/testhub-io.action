#!/bin/sh -l

echo "Pattern for test results: $INPUT_TEST_RESULTS_PATTERN" 
usr/bin/testhub-cli upload -p $GITHUB_REPOSITORY -f $INPUT_TEST_RESULTS_PATTERN -b $GITHUB_RUN_NUMBER -r $GITHUB_WORKSPACE

echo "Pattern for coverage: $INPUT_TEST_COVERAGE_PATTERN"
usr/bin/testhub-cli uploadCoverage -p $GITHUB_REPOSITORY -f $INPUT_TEST_COVERAGE_PATTERN -b $GITHUB_RUN_NUMBER -r $GITHUB_WORKSPACE

time=$(date)
echo "::set-output name=time::$time"

