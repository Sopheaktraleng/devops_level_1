#!/bin/bash

echo "===== SERVER INFORMATION REPORT ====="
echo ""

echo "📛 Hostname: $(hostname)"
echo "🖥️  OS: $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '\"')"
echo "🧠 Kernel Version: $(uname -r)"
echo "⏳ Uptime: $(uptime -p)"
echo ""

echo "===== CPU INFO ====="
lscpu | grep -E '^Model name|^CPU\(s\)|^Architecture'
echo ""

echo "===== MEMORY USAGE ====="
free -h
echo ""

echo "===== DISK USAGE ====="
df -h | grep '^/dev/'
echo ""

echo "===== IP ADDRESSES ====="
ip a | grep 'inet ' | awk '{print $2}' | grep -v '127.0.0.1'
echo ""

echo "===== LOGGED-IN USERS ====="
who
