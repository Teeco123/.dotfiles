#!/bin/bash

# Get all spaces for the current display
spaces=$(yabai -m query --spaces --display)

# Initialize empty label string
label=""

# Loop through each space object
for row in $(echo "$spaces" | jq -c '.[]'); do
	index=$(echo "$row" | jq '.index')
	has_focus=$(echo "$row" | jq '."has-focus"')

	if [ "$has_focus" = "true" ]; then
		label+="%{F#ffcc00}$index%{F-} "
	else
		label+="$index "
	fi
done

# Trim trailing space
label=$(echo "$label" | sed 's/ *$//')

# Update sketchybar label
sketchybar -m --set yabai label="$label"
