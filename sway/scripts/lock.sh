#!/bin/bash

STATUS=$(playerctl status);
	
[[ $STATUS == "Playing" ]] && playerctl pause;
[ -z "$1" ] && swaylock -K -u -c 282828 || swaylock -f -K -u -c 282828;
[ ! -z "$1" ] && eval $1;
[ -z "$1" ] && [[ $STATUS == "Playing" ]] && playerctl play;
