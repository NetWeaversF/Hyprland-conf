#!/bin/sh

logo=$(cat ~/.config/waybar/logo) 

if [ $logo = "work" ] ; then

     echo "{\"class\": \"$logo\", \"alt\": \"work\"}"

else

     echo "{\"class\": \"$logo\", \"alt\": \"logo\"}"

fi
