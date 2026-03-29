#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Chinsha Jangid

echo "======================================"
echo " Open Source Manifesto Generator"
echo "======================================"
echo ""

# Take input from user
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
USER=$(whoami)

OUTPUT="manifesto_$USER.txt"

# Generate manifesto
echo "--------------------------------------" > $OUTPUT
echo " Open Source Manifesto" >> $OUTPUT
echo "--------------------------------------" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in the power of open source." >> $OUTPUT
echo "Using tools like $TOOL, I experience the true meaning of $FREEDOM." >> $OUTPUT
echo "I aim to contribute by building $BUILD and sharing it with the world." >> $OUTPUT
echo "Open source represents collaboration, learning, and innovation." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""

# Display file
cat $OUTPUT
