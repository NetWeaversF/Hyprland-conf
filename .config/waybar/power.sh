#!/bin/bash
options="Shutdown\nReboot\nHibernate\nSleep\nLogout\nLock"
choice=$(echo -e $options | wofi --dmenu --prompt="Power Options" --style ~/.config/wofi/menu.css)
case $choice in
    Shutdown) systemctl poweroff ;;
    Reboot) systemctl reboot ;;
    Hibernate) systemctl hibernate ;;
    Sleep) systemctl suspend ;;
    Logout) hyprctl dispatch exit 0 || systemctl restart sddm ;;
    Lock) sh -c '(sleep 0.5s; hyprlock)' & disown ;;
esac
