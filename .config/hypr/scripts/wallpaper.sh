#!/bin/bash                                                       
#   _ _ _ _____ __    __    _____ _____ _____ _____ _____ 
#  | | | |  _  |  |  |  |  |  _  |  _  |  _  |   __| __  |
#  | | | |     |  |__|  |__|   __|     |   __|   __|    -|
#  |_____|__|__|_____|_____|__|  |__|__|__|  |_____|__|__|
#
#  by Bina

source "$HOME/.config/hypr/wallpaper.conf"

wall_path=$(cat "$HOME/.config/hypr/wallpaper.conf")

current_wp="$HOME/.config/hypr/wallpaper/current_wallpaper"
blurred_wp="$HOME/.config/hypr/wallpaper/current_wallpaper_blurred.png"
blur="50x30"


# write path to wp into file
if [ ! -f $current_wp ]; then
    touch $current_wp
    echo "$wall_path/default.png" > "$current_wp"
fi

# current wallpaper path
current_wallpaper=$(cat "$current_wp")

# select new wallpaper
case $1 in
    "init")
        if [ -f $current_wp ]; then
            wal -q -i "$current_wallpaper" --cols16 lighten -b '#171717' 

        else
            wal -q -i $wall_path/ --cols16 lighten -b '#171717' 

        fi
    ;;
    # random wallpaper
    *)
        wal -q -i $wall_path/ --cols16 lighten -b '#171717' 
    ;;
esac

# new wallpaper name
new_wp=$(echo $wallpaper | sed "s|$wall_path/||g")

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

