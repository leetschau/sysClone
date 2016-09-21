#!/bin/bash

set_style() {
  echo 'set style to <'$1'>'
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Show WizNote'
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "showiz $1"
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Primary>0'
  sudo rm -f /usr/local/bin/showiz
  sudo ln -s $0 /usr/local/bin/showiz
}

case $1 in
  leftright) xpos=2954;;
  updown) xpos=1590;;
  solo) xpos=1037;;
  set) set_style $2
       exit 0;;
esac

if [ $# -eq 0 ]; then
    echo '
Usage:
1. Setup: run command `~/apps/scripts/showiz set updown|leftright|solo`
   Invoke this command with ABSOLUTE path to make soft link right.
2. Run: use keyboard shortcut Ctrl-0 to show WizNote panel.

Note: When the size of the laptop or monitor changed,
put the mouse on the WizNote icon, run `xdotool getmouselocation --shell`,
and replace the X, Y coordinate here.'
    exit 1
fi

iconY=9
menuY=31

xdotool mousemove $xpos $iconY click 3
sleep 0.2
xdotool mousemove $xpos $menuY click 1
xdotool search --class WizNote windowactivate
