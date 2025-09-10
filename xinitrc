#!/bin/bash

~/.scripts/dwmbar &

xbindkeys &

feh --bg-scale ~/.config/wallpaper-1.jpg &

picom --config ~/.config/picom.conf &

# timeshift &

udiskie &

~/.scripts/battery-notify &

sct 2500 &

dunst &

exec dwm
