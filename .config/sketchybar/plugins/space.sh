#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

if [[ "$SELECTED" == true ]]; then
	# Set icon color to a selected color (example: green)
	sketchybar --set "$NAME" icon.color=0xff7dcfff
else
	# Set icon color to a default color (example: gray)
	sketchybar --set "$NAME" icon.color=0xffffffff
fi
