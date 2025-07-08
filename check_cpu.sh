#!/bin/bash

# Set threshold percentage (default to 80 if not given)
THRESHOLD=${1:-80}

# Get current CPU usage as integer (user + system)
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}' | cut -d'.' -f1)

if [ "$CPU_USAGE" -ge "$THRESHOLD" ]; then
  echo "⚠️  CPU usage is high: ${CPU_USAGE}% (Threshold: ${THRESHOLD}%)"
  exit 1
else
  echo "✅ CPU usage is normal: ${CPU_USAGE}%"
  exit 0
fi
