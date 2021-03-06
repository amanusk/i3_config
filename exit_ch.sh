#!/bin/sh

choices="lock\nlogout\nsuspend\nhibernate\nreboot\nshutdown"

chosen=$(echo  $choices | dmenu -i)

case "$chosen" in
    lock)
        i3lock -i /home/amanusk/Pictures/Wallpapers/T430s_classic_blur.png -c 000000
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        i3lock -i /home/amanusk/Pictures/Wallpapers/T430s_classic_blur.png -c 000000 && systemctl suspend
        ;;
    hibernate)
        i3lock -i /home/amanusk/Pictures/Wallpapers/T430s_classic_blur.png -c 000000 && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
esac
