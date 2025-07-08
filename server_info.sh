#!/bin/bash

echo "========== SERVER INFORMATION =========="
echo "Hostname       : $(hostname)"
echo "Uptime         : $(uptime -p)"
echo "OS             : $(grep '^PRETTY_NAME' /etc/os-release | cut -d= -f2 | tr -d '\"')"
echo "Kernel Version : $(uname -r)"
echo "Architecture   : $(uname -m)"

echo ""
echo "========== CPU =========="
lscpu | grep -E '^Model name|^CPU\(s\):|^Thread|^Core|^Socket'

echo ""
echo "========== MEMORY =========="
free -h

echo ""
echo "========== DISK USAGE =========="
df -h --total | grep -E '^Filesystem|^total'

echo ""
echo "========== IP ADDRESSES =========="
ip a | grep 'inet ' | awk '{print $2}' | grep -v '127.0.0.1'

echo ""
echo "========== TOP 5 MEMORY-HUNGRY PROCESSES =========="
ps aux --sort=-%mem | head -6
