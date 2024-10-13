#!/bin/bash

# Read a number from the user
echo "Enter a number:"
read number

# Check if the number is greater than 10
if [ $number -gt 10 ]; then
    echo "The number is greater than 10."
else
    echo "The number is not greater than 10."
fi