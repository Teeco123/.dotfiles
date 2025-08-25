#!/bin/bash

# Get the current space index
current_space=$(yabai -m query --spaces --space | jq '.index')

case $current_space in
1)
	if ! pgrep -x "Zen" >/dev/null; then
		open -a "Zen"
		echo "Opening Zen"
	fi
	;;
2)
	if ! pgrep -f "wezterm" >/dev/null; then
		open -a "WezTerm"
		echo "Opening WezTerm"
	fi
	;;
3)
	if ! pgrep -x "Messages" >/dev/null; then
		open -a "Messages"
		echo "Opening Messages"
	fi
	;;
4)
	open -a "Messages"
	echo "No app to open"
	;;
esac
