#!/usr/bin/env bash

REP_PATH=${1:-.}

if [ ! -d "$REP_PATH/.git" ]; then
	echo " ERROR : NOT A GIT REPO "
	exit 1
fi

cd "$REP_PATH" || exit 1

BRANCH_NAME=$(git branch --show-current)
echo "Branch: $BRANCH_NAME"

UNCOMMITTED_COUNT=$(git status --short | wc -l)

echo "Last 5 Commits:"
if git log -1 &>/dev/null; then
    
    git log --oneline -5 
else
    echo "No commits done"
fi

echo "Uncommitted Changes: $UNCOMMITTED_COUNT"
