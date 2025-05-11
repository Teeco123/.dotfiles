#!/usr/bin/env bash

ITEM="$1"

STATE=$(sketchybar --query "$ITEM" | jq -r '.popup.drawing')

if [ "$STATE" = "on" ]; then
	sketchybar --set "$ITEM" icon=O \
		label.drawing=off
else
	sketchybar --set "$ITEM" icon=P \
		label.drawing=on
fi
