#!/bin/bash
# original code is from: https://github.com/polybar/polybar/issues/763 by apetresc

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload monitor &
  done
else
  polybar --reload monitor &
fi
