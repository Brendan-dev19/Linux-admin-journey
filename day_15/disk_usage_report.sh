#!/bin/bash
echo "Disk Usage Report for $(date)"
echo "=============================="
df -h
echo ""
echo "Top 10 largest directories in home:"
du -ah ~ | sort -rh | head -n 10

