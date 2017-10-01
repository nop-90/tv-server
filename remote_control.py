import subprocess
import socket
import argparse
import sys
import re
import time as t
from datetime import datetime

RC_IP = '192.168.1.9'
RC_PORT = 5005
MULTICAST_ADDR = '239.255.0.1'
MULTICAST_PORT = '1234'
DVR_OUTPUT = '/home/alarm/DVR'
chan_list = []

def parse_channels_file(file = "channels.conf"):
    chan_freq = []
    try:
        f = open(file,"r",encoding="utf8").read()
        chan_parse = f.split('\n')
        for j in range(0,len(chan_parse)):
            chan_freq.append(0)
        i = 1
        for ch in chan_parse:
            ch = ch.split(':')
            if len(ch) == 13:
                chan_freq[i] = [ch[0],ch[1],ch[12]]
            elif len(ch) < 13 and len(ch) > 1:
                print("Malformed line at "+str(i))
            i += 1

    except IOError:
        print("File "+file+" was not found")
        exit()

    return chan_freq

def run_args():
   parser = argparse.ArgumentParser(description="Runs a python server for DVB-T streaming and recording")
   parser.add_argument('-c','--channels', help="configuration file containing all channels in MPlayer format", required=True)
   parser.add_argument('-a','--address', help="listening ip address for the server")
   parser.add_argument('-p','--port', help="listening port number for the server", type=int)
   return parser.parse_args(sys.argv[1:])

def record_dvb(channel):
    time = re.search(r'[0-9]{1,2}c[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}',channel)
    scheduled = re.search(r'[0-9]{1,2}c[0-9]{2}:[0-9]{2}t[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}',channel)
    if time != None and scheduled == None:
        file_time = datetime.now().strftime('%d%m%Y-%H%M%S')
        filename = "rec-"+file_time
        channel = time.group().split('c')
        time_sec = channel[1].split(':')
        channel = channel[0]
        print("Starting recording channel "+channel)
        subprocess.Popen(['/usr/local/bin/tv',channel])
        t.sleep(3)
        time_sec = (int(time_sec[0])*3600)+(int(time_sec[1])*60)+int(time_sec[2])
        subprocess.Popen(['/usr/bin/ffmpeg','-i','rtp://@239.255.0.1:1234','-map','0:v','-map','0:a','-c:v','copy','-c:a','copy','-t',str(time_sec),'-y',DVR_OUTPUT+'/'+filename+'.ts'])
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
        command = subprocess.Popen(['echo','/usr/local/bin/tv '+channel+'\n/usr/bin/ffmpeg -i rtp://@239.255.0.1:1234 -map 0:v -map 0:a -c copy -t '+str(time_sec)+' -y '+DVR_OUTPUT+'/'+filename+'.ts'],stdout=PIPE)
        scheduler = subprocess.Popen(['at',at], stdin=command.stdout)
    else:
        print("Argument for recording must be of form : \n[channel]c[time of recording in hour:minutes:secondes] (Example : 7c01:12:00 to record channel 7 during 1 hour 12 minutes) for immediate recording\n[channel]c[start hour of recording in hour:minutes]t[time of recording in hour:minutes:secondes] (Example : 7c21:05t02:25:00 to record channel 7 starting at 21:05 during 2 hours 25 minutes) for scheduled recording")
        return False


def launch_dvb(freq, pid):
    f = open('/tmp/dvblast.conf','w')
    f.write(MULTICAST_ADDR+":"+MULTICAST_PORT+" 1 "+pid)
    f.close()
    dvblast = subprocess.Popen(['dvblast','-e','-qq','-t0','-a','0','-f',freq,'-c','/tmp/dvblast.conf'],stdin=subprocess.PIPE, stdout=open('/tmp/dvblast.log','w+'))

def turnoff():
    subprocess.Popen(['killall','dvblast']).wait()

def start_server(ip, port):
    global chan_list
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind((ip, port))

    print("Listening on "+ip+":"+str(port))
    while True:
        data, addr = sock.recvfrom(1024)
        channel = data.decode("utf-8")

        if channel.isnumeric():
            channel = int(channel)
            if channel > 0 and channel < len(chan_list):
                turnoff()
                print("Switching to "+chan_list[channel][0])
                freq = chan_list[channel][1]
                pid = chan_list[channel][2]
                launch_dvb(freq,pid)
            else:
                print('Channel '+str(channel)+' does not exists')
        elif channel == "off":
            turnoff()
        elif record_dvb(channel):
            print("Record module started")
        else:
            print("Wrong input (give a number between 1 and "+len(chan_list)+" or off command")

def main():
    global chan_list

    args = run_args()
    chan_list = parse_channels_file(args.channels)
    if args.address != None and args.port != None:
        start_server(args.address, args.port)
    elif args.address != None and args.port == None:
        start_server(args.address, RC_PORT)
    elif args.address == None and args.port != None:
        start_server(RC_IP, args.port)
    else:
        start_server(RC_IP, RC_PORT)

main()
