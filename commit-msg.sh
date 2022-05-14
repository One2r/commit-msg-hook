#!/usr/bin/env bash

if [ -z "$1" ]; then
	echo "Missing argument (commit message). Did you try to run this manually?"
	exit 1
fi

commitTitle="$(cat $1 | head -n1)"

# ignore merge requests
if echo "$commitTitle" | grep -qE "^Merge branch \'"; then
	echo "Commit hook: ignoring branch merge"
	exit 0
fi

if ! echo "$commitTitle" | grep -qE '^(feat|fix|docs|style|refactor|perf|test|chore|workflow|build|ci|release|revert)(\(.+\))?: .{1,100}'; then
	echo "Bad formatted logging message"
	echo "Please see https://github.com/One2r/commit-msg-hook"
	exit 1
fi
