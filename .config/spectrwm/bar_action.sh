#!/bin/sh

vol() {
    vol=$(pulsemixer --get-volume | awk -F ' ' '{print $1}')
    mute=$(pulsemixer --get-mute)

    if [[ $mute = 0 ]] ; then
        echo -e "Volume: $vol%"
    else
        echo -e "Volume: $vol% (Muted)"
    fi
}

bat() {
    cat /sys/class/power_supply/BAT1/capacity
}

brightness() {
    expr $(cat /sys/class/backlight/amdgpu_bl0/brightness) \* 100 / 255
}

while true; do
    echo "[Brightness: $(brightness)%] [$(vol)] [Battery: $(bat)%]"
done
