#!/usr/bin/env bash

# xrandr --output DP-1 --set "Broadcast RGB" "Full" &
# xrandr --output HDMI-1 --set "Broadcast RGB" "Full" &
# ~/scripts/monitor-setup.sh
~/scripts/right-vertical.sh

# [ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh"
export wallpaper=~/d/pic/gruvbox.jpg
feh --no-fehbg --bg-fill "${wallpaper}" &
# ~/.config/polybar/launch.sh
setxkbmap -layout 'us,ru' -option 'grp:caps_toggle,grp:switch' &


pidof dunst && killall dunst &

dunst &
# dunst -lf  "${foreground}" \
#       -lb  "${background}" \
#       -lfr "${color2}" \
#       -nf  "${foreground}" \
#       -nb  "${background}" \
#       -nfr "${color2}" \
#       -cf  "${foreground}" \
#       -cb  "${background}" \
#       -cfr "${color2}" \



xmodmap -e 'keycode 105 = asciitilde' &
jamesdsp --tray &
xrdb -load "$XDG_CONFIG_HOME/.config/X11/xresources"

# setxkbmap -option altwin:swap_alt_win &

