#!/bin/bash

$lock = swaylock -f -c 000000
$snore = hyprctl dispatch dpms on
$wake = hyprctl dispatch dpms off
$locktime = 300
$sleeptime = 600

swayidle -w timeout $locktime $lock timeout $sleeptime $snore resume $wake before-sleep $lock &

#swayidle -w timeout 300 'swaylock -f -c 000000' timeout 600 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on' &
