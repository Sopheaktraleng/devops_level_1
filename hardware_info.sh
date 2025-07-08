#!/bin/bash

echo "========== CPU =========="
lscpu | grep -E 'Model name|Socket|Core|Thread|CPU\(s\)'

echo ""
echo "========== MEMORY =========="
free -h

echo ""
echo "========== DISK =========="
lsblk -o NAME,SIZE,TYPE,MOUNTPOINT

echo ""
echo "========== PCI DEVICES =========="
lspci | grep -i 'vga\|ethernet\|network'

echo ""
echo "========== USB DEVICES =========="
lsusb

echo ""
echo "========== BIOS & SYSTEM INFO =========="
sudo dmidecode -t system | grep -E 'Manufacturer|Product|Version|Serial'
