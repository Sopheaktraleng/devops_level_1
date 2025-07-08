#!/bin/bash

# Check if a directory was passed as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/directory"
  exit 1
fi

# Check if the specified path is a directory
if [ ! -d "$1" ]; then
  echo "Error: '$1' is not a valid directory."
  exit 2
fi

# Output the size of the directory
du -sh "$1"
