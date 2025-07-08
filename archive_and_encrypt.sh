#!/bin/bash

read -p "Enter path to archive (file or directory): " target
read -p "Enter output archive name (without extension): " name
read -sp "Enter password for encryption: " password
echo

# Validate input path
if [ ! -e "$target" ]; then
  echo "❌ Error: '$target' does not exist."
  exit 1
fi

# Create a tar archive
tar -czf "${name}.tar.gz" "$target"

# Encrypt the archive using OpenSSL (AES-256)
openssl enc -aes-256-cbc -salt -in "${name}.tar.gz" -out "${name}.enc" -pass pass:"$password"

# Remove original tarball for security
rm -f "${name}.tar.gz"

echo "✅ Archive created and encrypted as '${name}.enc'"
