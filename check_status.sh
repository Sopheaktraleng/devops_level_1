#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/file_or_directory"
  exit 1
fi

TARGET="$1"

if [ -f "$TARGET" ]; then
  echo "'$TARGET' is a regular file."
elif [ -d "$TARGET" ]; then
  echo "'$TARGET' is a directory."
elif [ -e "$TARGET" ]; then
  echo "'$TARGET' exists but is not a regular file or directory."
else
  echo "'$TARGET' does not exist."
fi
