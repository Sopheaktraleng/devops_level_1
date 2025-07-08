#!/bin/bash

read -p "Enter a number: " num

# Validate input
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
  echo "❌ Invalid input. Please enter a positive integer."
  exit 1
fi

if [ "$num" -le 1 ]; then
  echo "❌ $num is not a prime number."
  exit 0
fi

for (( i = 2; i * i <= num; i++ )); do
  if (( num % i == 0 )); then
    echo "❌ $num is not a prime number."
    exit 0
  fi
done

echo "✅ $num is a prime number."
