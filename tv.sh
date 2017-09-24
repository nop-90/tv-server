echo "Démarrage du flux multiplex $1"
if [ $1 -lte 27 ]
then
    ssh alarm@rasp /home/alarm/Documents/rasp-dvb/start-multiplex.sh $1
else
    echo "Channel doesn't exist"
fi
