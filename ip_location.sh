#!/bin/bash

read -p "Enter an IP address: " ip

# Validate IP format (basic)
if ! [[ "$ip" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "❌ Invalid IP format."
  exit 1
fi

# Query location using ipinfo.io
response=$(curl -s "https://ipinfo.io/$ip/json")

if [ -z "$response" ]; then
  echo "❌ Failed to get response."
  exit 2
fi

# Extract and print useful fields
echo "========== IP Location Info =========="
echo "$response" | jq -r '.ip, .hostname, .city, .region, .country, .org, .loc'
