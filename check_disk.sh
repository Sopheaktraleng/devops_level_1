#!/bin/bash

# Set default threshold to 80% if not passed as argument
THRESHOLD=${1:-80}

# Get disk usage percentage for root filesystem "/"
USAGE=$(df / | awk 'NR==2 {gsub("%",""); print $5}')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
  echo "⚠️  Disk usage is high: ${USAGE}% (Threshold: ${THRESHOLD}%)"
  exit 1
else
  echo "✅ Disk usage is normal: ${USAGE}%"
  exit 0
fi
