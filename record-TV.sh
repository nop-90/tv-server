#!/bin/bash
echo "Plan a record of TV stream"
if [ $# -lt 4 ]
then
    echo "Must give 4 parameters : [tv channel] [start time] [end time] [program name]"
else
    if [ $1 -eq 1 ]
    then
        echo "At $2, channel TF1 will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"TF1" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 2 ]
    then
        echo "At $2, channel France 2 will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"France 2" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 3 ]
    then
        echo "At $2, channel France 3 will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"F3 Provence-Alpes" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 4 ]
    then
        echo "At $2, channel CANAL + will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"CANAL+" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 5 ]
    then
        echo "At $2, channel France 5 will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"France 5" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 6 ]
    then
        echo "At $2, channel M6 will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"M6" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 7 ]
    then
        echo "At $2, channel Arte will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"Arte" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 8 ]
    then
        echo "At $2, channel C8 will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"C8" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 9 ]
    then
        echo "At $2, channel W9 will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"W9" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 10 ]
    then
        echo "At $2, channel TMC will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"TMC" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 11 ]
    then
        echo "At $2, channel NT1 will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"NT1" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 12 ]
    then
        echo "At $2, channel NRJ12 (WTF!!) will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"NRJ12" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 13 ]
    then
        echo "At $2, channel LCP will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"LCP" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 14 ]
    then
        echo "At $2, channel France 4 will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"France 4" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 15 ]
    then
        echo "At $2, channel BFM TV will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"BFM TV" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 16 ]
    then
        echo "At $2, channel iTélé will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"i>TELE" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 17 ]
    then
        echo "At $2, channel CSTAR will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"CSTAR" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 18 ]
    then
        echo "At $2, channel Gulli will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"Gulli" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 19 ]
    then
        echo "At $2, channel France Ô will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"France Ô" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 20 ]
    then
        echo "At $2, channel HD1 will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"HD1" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 21 ]
    then
        echo "At $2, channel L'équipe 21 will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"L'Equipe 21" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 22 ]
    then
        echo "At $2, channel 6ter will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"6ter" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 23 ]
    then
        echo "At $2, channel Numéro 23 will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"NUMERO 23" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 24 ]
    then
        echo "At $2, channel RMC Découverte will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"RMC Découverte" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 25 ]
    then
        echo "At $2, channel Chérie 25 will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"Chérie 25" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 26 ]
    then
        echo "At $2, channel LCI will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"LCI" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    elif [ $1 -eq 27 ]
    then
        echo "At $2, channel franceinfo will be recorded until $3 under the name $4"
        at $2 mplayer -dumpstream dvb://"franceinfo" -dumpfile /mnt/usb/TF1-$4-$2-$3.ts
        at $3 killall mplayer
    else
        echo "Channel does not exist. NOT RECORDING ANYTHING !"
    fi
fi
