#!/bin/bash

l=$(hyprctl activewindow | grep , | tail -n 1 | head -n 2 | cut -d ' ' -f 2 | cut -d ',' -f 1)

h=$(hyprctl activewindow | grep , | tail -n 1 | head -n 2 | cut -d ' ' -f 2 | cut -d ',' -f 2)

if [ $l -ge 717 ] && [ $h -ge 348 ]
then
  fastfetch
fi
