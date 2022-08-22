#!/bin/sh

if ($1 == "volume"):
then
    if $2 == "increase":
    then
        brightnessctl s +5%
    else
        brightnessctl s 5%-
    fi
elif
then
    if $2
