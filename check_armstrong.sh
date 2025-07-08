#!/bin/bash

read -p "Enter a number: " num

# Validate input: must be a non-negative integer
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
  echo "❌ Invalid input. Please enter a non-negative integer."
  exit 1
fi

sum=0
n=$num
digits=${#num}

while [ "$n" -gt 0 ]; do
  digit=$(( n % 10 ))
  sum=$(( sum + digit ** digits ))
  n=$(( n / 10 ))
done

if [ "$sum" -eq "$num" ]; then
  echo "✅ $num is an Armstrong number."
else
  echo "❌ $num is not an Armstrong number."
fi
