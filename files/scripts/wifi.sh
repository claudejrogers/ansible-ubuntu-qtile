#!/bin/sh

choice=$(nmcli -f SSID d wifi list | tail +2 | rofi -dmenu -i -p "WiFi networks")

if [ -z "$choice" ]; then
    exit 0
else
    choice="$(echo $choice | awk '{$1=$1};1')"
    nmcli --ask d wifi connect "$choice"
fi
