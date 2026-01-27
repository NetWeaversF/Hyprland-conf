#!/bin/bash                                                       
#   _ _ _ _____ __    __    _____ _____ _____ _____ _____ 
#  | | | |  _  |  |  |  |  |  _  |  _  |  _  |   __| __  |
#  | | | |     |  |__|  |__|   __|     |   __|   __|    -|
#  |_____|__|__|_____|_____|__|  |__|__|__|  |_____|__|__|
#
#  by Bina

source "$HOME/.config/hypr/wallpaper.conf"

wall_path=$(cat "$HOME/.config/hypr/wallpaper.conf")

rofi_command="rofi -dmenu -theme $HOME/.config/rofi/launchers/type-2/style-10.rasi -theme-str ${rofi_override}"



# Select a picture with rofi
selected_wp=$(find "${wall_path}"  -maxdepth 1  -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -exec basename {} \; | sort | while read -r A ; do  echo -en "$A\x00icon\x1f""${wall_path}"/"$A\n" ; done | $rofi_command)

echo $selected_wp

if [ $selected_wp != ' ' ] ; then

    current_wp="$HOME/.config/hypr/wallpaper/current_wallpaper"
    blurred_wp="$HOME/.config/hypr/wallpaper/current_wallpaper_blurred.png"
    blur="50x30"


    touch $current_wp
    echo "$wall_path/$selected_wp" > "$current_wp"

    # current wallpaper path
    current_wallpaper=$(cat "$current_wp")

    echo $current_wallpaper

    # select new wallpaper

    wal -q -i "$current_wallpaper" --cols16 lighten -b '#171717'



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

    swaync-client -rs &&  ~/.local/bin/pywalfox update && killall swayosd-server && exec swayosd-server & disown
    
fi
