#!/bin/bash

$lock = swaylock -f -c 000000
$snore = hyprctl dispatch dpms on
$wake = hyprctl dispatch dpms off
$locktime = 600
$sleeptime = 700

swayidle -w timeout $locktime $lock timeout $sleeptime $snore resume $wake before-sleep $lock &


