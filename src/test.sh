#!/bin/bash

echo "This is a test script for the GitHub Actions workflow."

EXPECTED_OUTPUT="Hello, Ahmed!"
ACTUAL_OUTPUT=$(node -e "console.log(require('./app.js').greet('Ahmed'))")

if [ "$ACTUAL_OUTPUT" == "$EXPECTED_OUTPUT" ]; then
  echo "Test passed: Output is correct."
  exit 0
else
  echo "Test failed: Expected '$EXPECTED_OUTPUT' but got '$ACTUAL_OUTPUT'."
  exit 1
fi 
