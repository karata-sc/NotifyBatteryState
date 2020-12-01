#!/bin/sh                                                                                        
DISPLAY=:0
BAT_PER=`/bin/cat "/sys/class/power_supply/BAT0/capacity"`
BAT_STATE=`/bin/cat "/sys/class/power_supply/BAT0/status"`

if [ $BAT_PER -le 25 -a "$BAT_STATE" = "Discharging" ]
then
        ffplay /home/foo/Music/battery_notify.wav
fi

if [ $BAT_PER -ge 80 -a "$BAT_STATE" = "Charging" ]
then
        ffplay /home/foo/Music/battery_notify.wav
fi

#sudo apt install ffmpeg

#cron setting
#
#*/5 *¦  * * *¦  me¦ DISPLAY=:0 /home/foo/bin/battery_ffplay.sh
