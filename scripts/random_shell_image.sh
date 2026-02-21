#!/usr/bin/env bash

rm /home/jkmi/activ_theme/fastfetch_image.jpg

theme=$((1 + RANDOM % 4))
if [ $theme -eq 1 ]
then
  ln -s "/home/jkmi/images/rei_theme/fastfetch_images/rei.jpg" "/home/jkmi/activ_theme/fastfetch_image.jpg"
elif [ $theme -eq 2 ]
then
  ln -s "/home/jkmi/images/rei_theme/fastfetch_images/rei2.jpg" "/home/jkmi/activ_theme/fastfetch_image.jpg"
elif [ $theme -eq 3 ]
then
  ln -s "/home/jkmi/images/rei_theme/fastfetch_images/rei3.jpg" "/home/jkmi/activ_theme/fastfetch_image.jpg"
else
  ln -s "/home/jkmi/images/rei_theme/fastfetch_images/rei4.jpg" "/home/jkmi/activ_theme/fastfetch_image.jpg"
fi

echo $theme
