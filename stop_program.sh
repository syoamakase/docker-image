#!/bin/bash

if [ "$(pidof node)" ]
then
  killall node
fi

if [ "$(pidof yarpserver)" ]
then
  killall yarpserver
fi

if [ "$(pidof python)" ]
then
  killall ipython
fi

if [ "$(pidof gzserver)" ]
then
  killall gzserver
fi

if [ "$(pidof Xvfb)" ]
then
  killall Xvfb
fi