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

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.mpd/pid ] && mpd

# Here i3 is kept as default
case $1 in
        *) exec i3;;
esac
