#!/bin/bash 

#restore theme

current_theme="$HOME/.config/hypr/current_theme"
new_theme="$HOME/.config/hypr/new_theme"

touch $new_theme
echo "work" > "$new_theme"

echo  "source = ~/.config/hypr/theme/work/hyprlock.conf" > /home/frank/.config/hypr/hyprlock.conf

echo "/home/frank/.config/hypr/wallpaper/work" > /home/frank/.config/hypr/wallpaper.conf

cp "/home/frank/.config/fastfetch/theme/work/config.jsonc" "/home/frank/.config/fastfetch/config.jsonc" > /dev/null 2>&1

touch $current_theme
echo "work" > "$current_theme"

exec ~/.config/hypr/scripts/wallpaper.sh