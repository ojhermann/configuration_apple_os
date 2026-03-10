#!/usr/bin/env zsh

source ~/Documents/configuration_apple_os/apps/brew/install.sh

for dir in ~/Documents/configuration_apple_os/apps/*; do
	if [[ -d "$dir" && "$(basename "$dir")" != "brew" ]]; then
		for file in "$dir"/install.sh; do
			source "$file"
		done
	fi
done
