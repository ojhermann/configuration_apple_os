#!/usr/bin/env zsh

APP="mise"

print -P "%F{green}%B$APP%b: starting to install $APP%f"

if ! command -v mise &>/dev/null; then
	brew install mise
fi

print -P "%F{green}%B$APP%b: $APP has been installed%f"
