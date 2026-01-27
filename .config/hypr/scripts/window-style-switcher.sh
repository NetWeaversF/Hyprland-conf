#!/bin/bash 

#hypr radius selector

options=(
	"   0\n"
	"  5\n"
	"  10\n"
	"  20"

)

style=$(echo -e "${options[@]}" | ~/.config/rofi/launchers/type-1/launcher-style.sh | awk '{print tolower($2)}')

if [ $style != ' ' ] ; then

	new_style="$HOME/.config/hypr/new_style"

	touch $new_style
	echo "$style" > "$new_style"


	cp "$HOME/.config/hypr/sources/style/$style/general.conf" "$HOME/.config/hypr/sources/general.conf" > /dev/null 2>&1

	cp "$HOME/.config/rofi/launchers/type-1/style/$style/style-7.rasi" "$HOME/.config/rofi/launchers/type-1/style-7.rasi" > /dev/null 2>&1

	cp "$HOME/.config/rofi/launchers/type-1/style/$style/style-11.rasi" "$HOME/.config/rofi/launchers/type-1/style-11.rasi" > /dev/null 2>&1

	cp "$HOME/.config/rofi/launchers/type-2/style/$style/style-10.rasi" "$HOME/.config/rofi/launchers/type-2/style-10.rasi" > /dev/null 2>&1

	hyprctl reload

fi
