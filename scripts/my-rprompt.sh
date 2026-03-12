#!/usr/bin/env zsh

branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)

if [[ -z "$branch" ]]; then
	echo ""
elif git status --porcelain 2>/dev/null | grep -q .; then
	echo "%F{red}[⎇ ${branch}]%f"
else
	echo "%F{green}[⎇ ${branch}]%f"
fi
