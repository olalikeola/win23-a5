#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

echo "We've set up a GitHub Actions Workflow that will run all"
echo "of the shell scripts in this directory as a series of tests."
echo
echo "To fail any test, you should use the exit 1 command;"
echo "To end a test early as a success, you should use the exit 0 command."

echo "Invoke your program with the \$CALCULATOR variable; an example is below"


# Test 01: Ensure the program runs without error with a simple, valid invocation.
if ! $CALCULATOR 1 + 1; then  # If the return code of $PROGRAM is non-zero (i.e. error)...
  echo 'ERROR! A valid run of the calculator (1 + 1) failed!'
  exit 1
fi

# Test 02: Ensure simple case has correct output...
if [[ $($CALCULATOR 1 + 1) -ne 2 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (1 + 1) failed to produce 2 as an output!'
  exit 1
fi

# Test 03: Ensure program errors with an invalid operand
if $CALCULATOR 3 @ 2; then  # If the return code of $PROGRAM is zero (i.e. success)...
  echo 'ERROR! An invalid run of the application (3 @ 2) apparently succeeded?!'
  exit 1
fi

# Test 03: Ensure program errors with an invalid operand
if [[ $($CALCULATOR 5 - 1) -ne 4 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (5 - 1) failed to produce 4 as an output!'
  exit 1
fi

if [[ $($CALCULATOR 5 * 10) -ne 50 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (5 * 10) failed to produce 50 as an output!'
  exit 1
fi

if [[ $($CALCULATOR 50 / 5) -ne 10 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (50 / 5) failed to produce 10 as an output!'
  exit 1
fi

if [[ $($CALCULATOR 5 * 5) -ne 25 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (50 / 5) failed to produce 10 as an output!'
  exit 1
fi
