#!/bin/sh
dolu=`df | grep "/$" | awk '{print $3}'`
tum=`df | grep "/$" | awk '{print $2}'`

yuzde=`expr $dolu \* 100 / $tum`

zenity --progress \
    --title "Disk kullanımı" \
    --text "Disk kullanımı: $yuzde %" \
    --percentage $yuzde \
    --width 600 \