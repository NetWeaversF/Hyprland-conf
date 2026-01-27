#!/bin/bash 

#Waybar selector

options=(
	"   Fixed\n"
	"  Holo-Taco\n"
	"  Islands\n"
	"  Normal\n"
	"  Minimal"
)

theme=$(echo -e "${options[@]}" | ~/.config/rofi/launchers/type-1/launcher-waybar.sh | awk '{print tolower($2)}')

if [ $theme != ' ' ] ; then

	new_theme="$HOME/.config/waybar/new_theme"

	touch $new_theme
	echo "$theme" > "$new_theme"


	cp "$HOME/.config/waybar/theme/$theme/config" "$HOME/.config/waybar/config" > /dev/null 2>&1

	cp "$HOME/.config/waybar/theme/$theme/modules.json" "$HOME/.config/waybar/modules.json" > /dev/null 2>&1

	cp "$HOME/.config/waybar/theme/$theme/style.css" "$HOME/.config/waybar/style.css" > /dev/null 2>&1

	cp "$HOME/.config/swaync/theme/$theme/style.css" "$HOME/.config/swaync/style.css" > /dev/null 2>&1

	cp "$HOME/.config/swaync/theme/$theme/config.json" "$HOME/.config/swaync/config.json" > /dev/null 2>&1

	cp "$HOME/.config/swaync/theme/$theme/utils.css" "$HOME/.config/swaync/utils.css" > /dev/null 2>&1

	# launch waybar based on new wallpaper colors
	source "$HOME/.cache/wal/colors.sh"
	exec ~/.config/waybar/launch.sh 

fi
