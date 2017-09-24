#!/usr/bin/python3
from subprocess import Popen
import socket

UDP_IP = "192.168.1.9"
UDP_PORT = 5005

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind((UDP_IP, UDP_PORT))

while True:
    data, addr = sock.recvfrom(1024)
    channel = data.decode("utf-8")

    if channel.isnumeric() or channel == "s":
        print("Switching to ",channel)
        Popen(['/usr/local/bin/tv',channel])
    elif channel == "off":
        Popen(['killall','dvblast'])
    else:
        print("Wrong signal")
