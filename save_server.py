#!/usr/bin/python3
from subprocess import Popen,PIPE
from datetime import datetime
import socket
import time as t
import re

UDP_IP = "192.168.1.9"
UDP_PORT = 5006

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind((UDP_IP, UDP_PORT))

while True:
    data, addr = sock.recvfrom(1024)
    channel = data.decode("utf-8")

    time = re.search(r'[0-9]{1,2}c[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}',channel)
    scheduled = re.search(r'[0-9]{1,2}c[0-9]{2}:[0-9]{2}t[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}',channel)
    if time != None and scheduled == None:
        file_time = datetime.now().strftime('%d%m%Y-%H%M%S')
        filename = "rec-"+file_time
        channel = time.group().split('c')
        time_sec = channel[1].split(':')
        channel = channel[0]
        print("Starting recording channel "+channel)
        Popen(['/usr/local/bin/tv',channel])
        t.sleep(3)
        time_sec = (int(time_sec[0])*3600)+(int(time_sec[1])*60)+int(time_sec[2])
        Popen(['/usr/bin/ffmpeg','-i','rtp://@239.255.0.1:1234','-map','0:v','-map','0:a','-c:v','copy','-c:a','copy','-t',str(time_sec),'-y','/home/alarm/DVR/'+filename+'.ts'])
    elif scheduled != None:
        param = scheduled.group().split('c')
        time_param = param[1].split('t')
        channel = param[0]
        file_date = datetime.now().strftime('%d%m%Y')
        filename = "rec-"+file_date+"-"+time_param[0].replace(':','')
        at = time_param[0]
        t.sleep(3)
        print("Scheduled recording "+channel+" at "+at)
        time_sec = time_param[1].split(':')
        time_sec = (int(time_sec[0])*3600)+(int(time_sec[1])*60)+int(time_sec[2])
        command = Popen(['echo','/usr/local/bin/tv '+channel+'\n/usr/bin/ffmpeg -i rtp://@239.255.0.1:1234 -map 0:v -map 0:a -c copy -t '+str(time_sec)+' -y /home/alarm/DVR/'+filename+'.ts'],stdout=PIPE)
        scheduler = Popen(['at',at], stdin=command.stdout)
    elif channel == "off":
        Popen(['killall','ffmpeg'])
    else:
        print("Wrong signal")
