#!/bin/bash

export DE=openbox
(sleep 2 && sh ~/.wmfs-status2.sh) &


# Dbus fix
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

/usr/bin/xdg-user-dirs-update

#xset +fp /usr/share/fonts/local
#xset fp rehash

(sleep 2 && nm-applet) &
~/.fehbg &
(sleep 2 && megasync)&

xcompmgr -cCf &

#exec openbox-session
exec wmfs

