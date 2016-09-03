#!/bin/bash

case $1 in
  left) xpos=11
        ypos=22;;
  down) xpos=33
        ypos=44;;
  solo) xpos=55
        ypos=66;;
esac
echo $xpos
echo $ypos


if [ $# -eq 0 ]; then
    echo  'Command format: showWiz <xpos>
          Put the mouse on the WizNote icon and run `xdotool getmouselocation --shell`
          <xpos> is the X value in the output.'
    exit 1
fi

xpos=$1
xdotool mousemove $1 9 click 3
sleep 0.2
xdotool mousemove $1 31 click 1
xdotool search --class WizNote windowactivate
