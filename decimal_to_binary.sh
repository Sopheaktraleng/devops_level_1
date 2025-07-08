#!/bin/bash

read -p "Enter a decimal number: " num

# Validate input
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
  echo "❌ Invalid input. Please enter a non-negative integer."
  exit 1
fi

# Convert to binary using bc
binary=$(echo "obase=2; $num" | bc)
echo "Binary of $num is: $binary"
