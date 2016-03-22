#!/bin/bash

##If you want each program logs, comment out first and uncomment second 

##To prepare display
Xvfb :1 -screen 0 1024x768x16 &> xvfb.log  &
DISPLAY=:1.0
export DISPLAY

##Start yarp
yarpserver 1>/dev/null &
#yarpserver &

##Start gzserver
gzserver ~/icubTest.world 1>/dev/null 2>/dev/null &
#gzserver ~/icubTest.world &

##Start gzweb
./gzweb/start_gzweb.sh 1>/dev/null 2>/dev/null
#./gzweb/start_gzweb.sh 

##Start ipython notebook
cd ~/src
ipython notebook --profile=myserver 1>/dev/null 2>/dev/null &
#ipython notebook --profile=myserver &
