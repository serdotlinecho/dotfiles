#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

xrdb -merge $HOME/.Xresources
sh ~/.fehbg
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,secrets,ssh)
export GPG_AGENT_INFO SSH_AUTH_SOCK
xautolock &
udiskie --smart-tray &

exec i3
