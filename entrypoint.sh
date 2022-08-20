#!/bin/sh

echo "Starting test results upload..."
echo "Pattern for test results: $INPUT_TEST_RESULT_PATTERN" 


BRANCH_NAME="${GITHUB_HEAD_REF:-${GITHUB_REF_NAME}}"
BRANCH_NAME="${BRANCH_NAME:-@undefined}"
echo "Branch name: $BRANCH_NAME"

/testhub upload -p "$GITHUB_REPOSITORY" -f "$INPUT_TEST_RESULT_PATTERN" -b "$GITHUB_RUN_NUMBER" -r "$INPUT_BASE_DIRECTORY" --branch "$BRANCH_NAME"

echo "Pattern for coverage: $INPUT_TEST_COVERAGE_PATTERN"
/testhub uploadCoverage -p "$GITHUB_REPOSITORY" -f "$INPUT_TEST_COVERAGE_PATTERN" -b "$GITHUB_RUN_NUMBER" -r "$INPUT_BASE_DIRECTORY"

time=$(date)
echo "::set-output name=time::$time"

echo "Finish results upload..."
