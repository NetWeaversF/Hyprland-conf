#!/bin/bash                                                       
#   _ _ _ _____ __    __    _____ _____ _____ _____ _____ 
#  | | | |  _  |  |  |  |  |  _  |  _  |  _  |   __| __  |
#  | | | |     |  |__|  |__|   __|     |   __|   __|    -|
#  |_____|__|__|_____|_____|__|  |__|__|__|  |_____|__|__|
#
#  by Bina


current_wp="$HOME/.config/hypr/wallpapers/current_wallpaper"
blurred_wp="$HOME/.config/hypr/wallpapers/current_wallpaper_blurred.png"
blur="50x30"

# write path to wp into file
if [ ! -f $current_wp ]; then
    touch $current_wp
    echo "$HOME/.config/hypr/wallpapers/default.png" > "$current_wp"
fi

# current wallpaper path
current_wallpaper=$(cat "$current_wp")

matugen image $current_wallpaper -t scheme-expressive

# select new wallpaper
case $1 in
    "init")
        if [ -f $current_wp ]; then
            wal -q -i $current_wallpaper --cols16 lighten -l -b '#171717' --backend [colorz]

        else
            wal -q -i ~/.config/hypr/wallpapers/ --cols16 lighten -l -b '#171717' --backend [colorz]

        fi
    ;;
    # random wallpaper
    *)
        wal -q -i ~/.config/hypr/wallpapers/ --cols16 lighten -l -b '#171717' --backend [colorz]
    ;;
esac

# new wallpaper name
new_wp=$(echo $wallpaper | sed "s|$HOME/.config/hypr/wallpapers/||g")

# launch waybar based on new wallpaper colors
source "$HOME/.cache/wal/colors.sh"
~/.config/waybar/launch.sh


# switch to new wallpaper with swww
#transition_type="grow"
transition_type="wipe"
# transition_type="random"


swww img $wallpaper \
    --transition-type=$transition_type \
    --transition-pos center

# create blurred wallpaper (for hyprlock)
magick $wallpaper -resize 2560x1440\! $wallpaper
echo ":: Resized"
if [ ! "$blur" == "0x0" ] ; then
    magick $wallpaper -blur $blur $blurred_wp
    echo ":: Blurred"
fi

# update current wallpaper file
echo "$wallpaper" > "$current_wp"

dolphin= $(echo pidof dolphin)

if ["$dolphin" != ""]; then
killall dolphin && hyprctl dispatch exec [workspace 1] dolphin
fi