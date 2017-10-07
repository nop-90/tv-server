# Server to broadcast DVB stream on your local network

## Summary

This set of scripts allow to create a server on your local network to broadcast and record DVB-T stream. It has been tested in France at 2 different locations but should work in most european countries.
It was made to work on a raspberry pi but should work on every device with python and linux.
You cannot watch 2 different channels on the same time. It can be done theorically for channels situed on the same DVB transmitter but isn't handled by this script. To do that you have to get a second DVB-T adapter, copy this script and change the '-a' option for the dvblast command to 1 to tell dvblast to use a second adapter. You could also duplicate the systemd service to point your modified script.

## Prerequisites

* Have an DVB-T adapter  
* Having a network access  
* A server having those 2 things  
* Install 'dvblast' (for dvb streaming) and 'at' (to schedule recording)  
* Systemd to create a permanant service (optional)  

## Installation

### Server

**Channel list creation**

First, you have to scan for every transmitter available and then list all the services (channels) availables on them.
To give you an idea, there are 6 transmitters in France named R1,R2,R3,R4,R5,R6 and they all have the same channels attributed in all the country.

The script rescan_freq.sh will do that automatically. Just give it a city name.

**NOTE : You have to change your country code in the w_scan command to be sure to scan the frequency reserved to DVB-T in your country (default is FR). Those can change every 3 or 5 years if your country decides to reallocate DVB-T frequency to telephony and force the transponders to change their frequencies.**

You will have a [countrycode]-[city] file and a [city].conf in your folder. Keep the first one to rescan channels more quickly the next time as channels also change of program id for a given transponder.

**Another NOTE: If you are missing some TV channels, do the scan 4 or 5 times to check if there wasn't any environmental issue impeding your previous scan. If you still have missing channels, try to shorten your distance to your antenna by using another antenna socket in your house or removing the cable between your device and the socket.**

The program ID is this number between [] : ```TF1:690000000:INVERSION_AUTO:BANDWIDTH_8_MHZ:FEC_2_3:FEC_AUTO:QAM_64:TRANSMISSION_MODE_8K:GUARD_INTERVAL_1_8:HIERARCHY_NONE:120:0:[1537] ```  
It allows to select a stream between all the streams given by a transmitter.

In the [city].conf file is the list of every channel found, as the script attributes a number to each channel, you have to order all entries in the usual order you know in your country. You can throw non-free channels and dummy entries that have no name.

When it's done, you can leave it here or move it elsewhere. You have to modify the systemd service file to change the default path to the one you've choosed.

**Server configuration**

To change the multicast address/port (MULTICAST_ADDR/MULTICAST_PORT) or the server address/port (RC_IP/RC_PORT) you must change the variables at the beginning of remote_control.py to adapt it to your configuration.

You have to also modify the script 'tv' which is the "client" to launch a request to the server to set the correct server address and port at the end of the netcat command. 

After everything is settled you can install the script with install.sh.

### Client
To allow a device to communicate to the server, you have to copy the 'tv' script to every device you want to be able to change channels.

**NOTE : There is no priority for clients, every device can change the streamed channel for the whole network.**

## Usage
To start or change the streamed channel : ```tv [channel number]```  
To stop the streaming (don't do that if you are recording something): ```tv off ```  
To open vlc with the default streaming address : ```tv on ```  
To record immediately a tv channel : ``` tv [channel]c[time of recording in hour:minutes:secondes]``` (Example : `tv 7c01:12:00` to record channel 7 during 1 hour 12 minutes)  
To schedule a record of a tv channel : ``` tv [channel]c[start hour of recording in hour:minutes]t[time of recording in hour:minutes:secondes]``` (Example : `ŧv 7c21:05t02:25:00` to record channel 7 starting at 21:05 during 2 hours 25 minutes)	

You can check that every action have been acknowledged by looking at the python script output or using ```systemctl status remote-control``` if you installed the service

## References
* For French users in case of problems you can consult the CSA website to find your receptor : [French TNT transmitter database](http://www.csa.fr/matnt/couverture)  
* This site uses channel number in place of frequencies, the table of equivalency is here : [French TNT canal/frequency equivalency](http://tvignaud.pagesperso-orange.fr/tv/canaux.htm)
* [DVBlast](https://www.videolan.org/projects/dvblast.html)
* [Original DVB scan instruction](https://www.linuxtv.org/wiki/index.php/Dvbscan)
