#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xset -dpms
xset s off

# exec gnome-session
# exec startkde
# exec startxfce4
dropbox &
slack &
setxkbmap -option caps:escape
nm-applet &
xbindkeys &

exec i3
# ...or the Window Manager of your choice
