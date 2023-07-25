#!/bin/bash
while true; do
    if pgrep -x "kwin_x11" > /dev/null
    then
        sleep 5
        kwriteconfig5 --file ~/.config/kwinrc --group Windows --key BorderlessMaximizedWindows true
        qdbus-qt5 org.kde.KWin /KWin reconfigure
        break
    fi
done
