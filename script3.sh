#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Chinsha Jangid

DIRS=("/etc" "/usr/bin" "/c/Users" "/tmp")

echo "======================================"
echo " Directory Audit Report"
echo "======================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then

        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

        # Get size (may not work for all folders in Git Bash)
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"

    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking Git location permissions..."

GIT_PATH=$(which git)

if [ -f "$GIT_PATH" ]; then
    ls -l $GIT_PATH
else
    echo "Git not found"
fi
