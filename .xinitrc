#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps



if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


#statusbar loop
/usr/local/bin/dwmbar &

udiskie &

syncthing --no-browser &

redshift &

aw-server & aw-watcher-afk & aw-watcher-window &

feh --bg-scale ~/.wallpaper/0k1tu5z5lv1b1.jpg &

xbindkeys &

picom --config ~/.config/picom.conf &

# Nvidia
xrandr --setprovideroutputsource modesetting NVIDIA-0 &
xrandr --auto &

exec dwm
