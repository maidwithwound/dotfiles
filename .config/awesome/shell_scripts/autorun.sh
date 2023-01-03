#!/usr/bin/env bash

# [ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh"
export wallpaper=~/d/pic/clouds.jpg
feh --bg-fill "${wallpaper}" &
# ~/.config/polybar/launch.sh
setxkbmap -layout 'us,ru' -option 'grp:caps_toggle,grp:switch' &


pidof dunst && killall dunst &

dunst
# dunst -lf  "${foreground}" \
#       -lb  "${background}" \
#       -lfr "${color2}" \
#       -nf  "${foreground}" \
#       -nb  "${background}" \
#       -nfr "${color2}" \
#       -cf  "${foreground}" \
#       -cb  "${background}" \
#       -cfr "${color2}" \

xrandr --output DP-1 --set "Broadcast RGB" "Full" &
xrandr --output HDMI-1 --set "Broadcast RGB" "Full" &



xmodmap -e 'keycode 105 = asciitilde' &

jamesdsp --tray &
