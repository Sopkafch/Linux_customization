#!/usr/bin/env bash
// Паень выключения 
options="   Выключить\n   Перезагрузить\n   Сон\n   Выход"

chosen="$(echo -e "$options" | rofi -dmenu -i -p "Система" -theme ~/.config/rofi/off-pc/pmenu.rasi)"

case $chosen in
    *Выключить) systemctl poweroff ;;
    *Перезагрузить) systemctl reboot ;;
    *Сон) systemctl suspend ;;
    *Выход) i3-msg exit ;;
esac
