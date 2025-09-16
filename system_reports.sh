#!/bin/bash
echo "===== System Report ====="
echo "Date: $(date)"
echo "IP: $(curl -s ifconfig.me)"
echo "Disk Usage:"
df -h | head -5
echo "Top 5 Processes by CPU:"
ps -Ao pid,comm,%cpu,%mem | sort -nrk3 | head -5
