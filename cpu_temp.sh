#!/bin/bash

# Check if sensors command is available
if ! command -v sensors &> /dev/null; then
  echo "❌ 'sensors' command not found. Install it using: sudo apt install lm-sensors"
  exit 1
fi

# Display CPU temperature
echo "========== CPU Temperature =========="
sensors | grep -i 'temp' | grep -E 'Core|Package|CPU'
