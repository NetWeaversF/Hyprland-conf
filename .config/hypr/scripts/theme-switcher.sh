#!/bin/bash 

#Theme selector

options=(
	"   Anime\n"
	"  Gaming\n"
	"  Holo-Taco\n"
	"  Warhammer\n"
	"  Work\n"
	"  Zen"
)

theme=$(echo -e "${options[@]}" | ~/.config/rofi/launchers/type-1/launcher-theme.sh | awk '{print tolower($2)}')

current_theme="$HOME/.config/hypr/current_theme"
new_theme="$HOME/.config/hypr/new_theme"

touch $new_theme
echo "$theme" > "$new_theme"

themecheck=$(cat $new_theme)

if [ $themecheck != ' ' ] ; then

	sed -i  "s~$(cat $current_theme)~$(cat $new_theme)~g"  $HOME/.config/hypr/hyprlock.conf

	sed -i "s~$(cat $current_theme)~$(cat $new_theme)~g"  $HOME/.config/hypr/wallpaper.conf

	cp "$HOME/.config/fastfetch/theme/$theme/config.jsonc" "$HOME/.config/fastfetch/config.jsonc" > /dev/null 2>&1

	cp "$HOME/.config/hypr/theme/$theme/logo" "$HOME/.config/waybar/logo" > /dev/null 2>&1

	touch $current_theme
	echo "$theme" > "$current_theme"

	~/.config/hypr/scripts/wallpaper.sh && swaync-client -rs &&  ~/.local/bin/pywalfox update && killall swayosd-server && exec swayosd-server & disown
fi
