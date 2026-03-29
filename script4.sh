#!/bin/bash
# Script 4: Log File Analyzer
# Author: Chinsha Jangid

LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword = error
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found."
    exit 1
fi

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "======================================"
echo " Log Analysis Report"
echo "======================================"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "Last matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
