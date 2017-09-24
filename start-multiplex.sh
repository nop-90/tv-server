if [ -z $PLACE_TV ]
then
    echo "Variable d'environnement PLACE_TV non définie, je quitte"
else
    echo "Démarrage du flux multiplex $1"
    echo "Lieu : $PLACE_TV"
    killall dvblast
    if [ $1 -eq 1 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 706000000 -c dvblast.1.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 690000000 -c dvblast.1.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 2 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 762000000 -c dvblast.2.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 770000000 -c dvblast.2.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 3 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 762000000 -c dvblast.3.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 777000000 -c dvblast.3-2.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 4 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 730000000 -c dvblast.1.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 530000000 -c dvblast.4.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 5 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 690000000 -c dvblast.5.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 506000000 -c dvblast.5.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 6 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 690000000 -c dvblast.6.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 506000000 -c dvblast.6.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 7 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 690000000 -c dvblast.7.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 506000000 -c dvblast.7.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 8 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 506000000 -c dvblast.8.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 738000000 -c dvblast.8.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 9 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 690000000 -c dvblast.9.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 506000000 -c dvblast.9.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 10 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 706000000 -c dvblast.10.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 690000000 -c dvblast.1..conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 11 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 706000000 -c dvblast.11.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 690000000 -c dvblast.11.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 12 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 706000000 -c dvblast.12.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 690000000 -c dvblast.12.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 13 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 706000000 -c dvblast.13.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 690000000 -c dvblast.13.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 14 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 762000000 -c dvblast.14.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 770000000 -c dvblast.14.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 15 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 706000000 -c dvblast.15.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 738000000 -c dvblast.15.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 16 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 506000000 -c dvblast.16.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 738000000 -c dvblast.16.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 17 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 506000000 -c dvblast.17.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 738000000 -c dvblast.17.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 18 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 506000000 -c dvblast.18.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 738000000 -c dvblast.18.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 19 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 762000000 -c dvblast.19.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 770000000 -c dvblast.19.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 20 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 530000000 -c dvblast.20.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 538000000 -c dvblast.20.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 21 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 530000000 -c dvblast.1.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 538000000 -c dvblast.21.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 22 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 690000000 -c dvblast.22.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 506000000 -c dvblast.22.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 23 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 530000000 -c dvblast.23.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 538000000 -c dvblast.23.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 24 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 530000000 -c dvblast.24.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 538000000 -c dvblast.24.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 25 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 530000000 -c dvblast.25.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 538000000 -c dvblast.25.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 26 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 730000000 -c dvblast.26.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 530000000 -c dvblast.26.conf >/tmp/dvblast.log 2>&1 &
        fi
    elif [ $1 -eq 27 ]
    then
        rm -f /tmp/dvblast.sock
        if [ "$PLACE_TV" == "VANNES" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 730000000 -c dvblast.27.conf >/tmp/dvblast.log 2>&1 &
        elif [ "$PLACE_TV" == "TOULON" ]
        then
            dvblast -e -qq -t0 -r /tmp/dvblast.sock -a 0 -f 770000000 -c dvblast.27.conf >/tmp/dvblast.log 2>&1 &
        fi
    else
        echo "Channel doesn't exist"
    fi
fi
