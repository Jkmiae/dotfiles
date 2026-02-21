#!/bin/bash

FILE_THEME="$HOME/.config/theme"
#ACTIV_THEME=$(cat $FILE_THEME/activ_theme/theme)

if [ $1 -eq -1 ]
then 
  a=$((1 + RANDOM % 6))
else
  a=$1
fi


if [ $a -eq 1 ]
then
  NEW_THEME="$FILE_THEME/princesse_mononoke_kodama/"
elif [ $a -eq 2 ]
then
  NEW_THEME="$FILE_THEME/rei_claire_de_lune/"
elif [ $a -eq 3 ]
then
  NEW_THEME="$FILE_THEME/apothecarydiaries/"
elif [ $a -eq 4 ]
then
  NEW_THEME="$FILE_THEME/totoro/"
elif [ $a -eq 5 ]
then
  NEW_THEME="$FILE_THEME/arcan_jinx/"
elif [ $a -eq 6 ]
then
  NEW_THEME="$FILE_THEME/shainsaw_man/"
fi

rm $HOME/.config/theme/activ_theme
ln -s $NEW_THEME $HOME/.config/theme/activ_theme

rm $HOME/.config/alacritty/alacritty.toml
ln -s $HOME/.config/theme/activ_theme/alacritty_theme.toml $HOME/.config/alacritty/alacritty.toml

# Apply the selected wallpaper
hyprpaper &
killall -9 waybar
waybar &
hyprctl reload config-only
wal -i "$NEW_THEME" -n -q
kitty @ set-colors -a "~/.cache/wal/colors-kitty.conf"
