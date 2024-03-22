#!/bin/bash

STATUS=$(playerctl status);
	
[[ $STATUS == "Playing" ]] && playerctl pause;
swaymsg "output * power off"

[ -z "$1" ] && swaylock -K -u -c 282828 || swaylock -f -K -u -c 282828;
[ ! -z "$1" ] && eval $1;

swaymsg "output * power on"
[ -z "$1" ] && [[ $STATUS == "Playing" ]] && playerctl play;
