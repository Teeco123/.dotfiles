#!/bin/bash

POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

apple_logo=(
	icon=
	padding_right=15
	label.drawing=off
	popup.background.corner_radius=8
	popup.background.color=0xee1e1c31
	click_script="$POPUP_CLICK_SCRIPT"
)

apple_prefs=(
	icon=
	label="Preferences"
	click_script="open -a 'System Preferences'; $POPUP_OFF"
)

apple_activity=(
	icon=
	label="Activity"
	click_script="open -a 'Activity Monitor'; $POPUP_OFF"
)

apple_lock=(
	icon=󰌾
	label="Lock Screen"
	click_script="pmset displaysleepnow; $POPUP_OFF"
)

sketchybar --add item apple.logo left \
	--set apple.logo "${apple_logo[@]}" \
	--subscribe apple.logo mouse.entered \
	\
	--add item apple.prefs popup.apple.logo \
	--set apple.prefs "${apple_prefs[@]}" \
	--subscribe apple.prefs mouse.entered \
	\
	--add item apple.activity popup.apple.logo \
	--set apple.activity "${apple_activity[@]}" \
	\
	--add item apple.lock popup.apple.logo \
	--set apple.lock "${apple_lock[@]}"
