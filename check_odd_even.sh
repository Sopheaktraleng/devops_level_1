#!/bin/bash

read -p "Enter a number: " num

# Check if input is a valid integer
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
  echo "❌ Invalid input. Please enter an integer."
  exit 1
fi

# Check even or odd
if (( num % 2 == 0 )); then
  echo "✅ $num is even."
else
  echo "✅ $num is odd."
fi
