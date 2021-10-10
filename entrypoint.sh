#!/bin/bash

echo "Starting test results upload..."
echo "Pattern for test results: $INPUT_TEST_RESULT_PATTERN" 
/testhub-cli upload -p "$GITHUB_REPOSITORY" -f "$INPUT_TEST_RESULT_PATTERN" -b "$GITHUB_RUN_NUMBER" -r "$INPUT_BASE_DIRECTORY" --branch "$GITHUB_REF"

echo "Pattern for coverage: $INPUT_TEST_COVERAGE_PATTERN"
/testhub-cli uploadCoverage -p "$GITHUB_REPOSITORY" -f "$INPUT_TEST_COVERAGE_PATTERN" -b "$GITHUB_RUN_NUMBER" -r "$INPUT_BASE_DIRECTORY"

time=$(date)
echo "::set-output name=time::$time"

echo "Finish results upload..."
