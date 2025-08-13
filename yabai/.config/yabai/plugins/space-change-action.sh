#!/bin/bash

# Get the current space index
current_space=$(yabai -m query --spaces --space | jq '.index')

case $current_space in
1)
	if ! pgrep -x "Safari" >/dev/null; then
		open -a "Safari"
	fi
	;;
2)
	if ! pgrep -f "wezterm" >/dev/null; then
		open -a "WezTerm"
	fi
	;;
3)
	if ! pgrep -x "Messages" >/dev/null; then
		open -a "Messages"
	fi
	;;
esac
