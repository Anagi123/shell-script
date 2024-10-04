#!/bin/bash

# this is called array, instead of single value it can hold multiple values.
PERSONS=("Ravi" "Kumar" "siri" "magi" "nagi")
# inside array we always refer values with index and it starts from 0

echo "First Person: ${PERSONS[0]}"

echo "First Person: ${PERSONS[@]}"
