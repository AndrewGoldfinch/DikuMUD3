#!/usr/bin/bash

# Place any executable file in this directory that you want to allow
# running from DIL. Symbolic links and scripts are your friends here
# E.g. ln -s /usr/bin/gh

umask 666

LOGNAME=compile.log
LOGFILE=../../lib/dilfiles/strings/$LOGNAME

rm -f $LOGFILE
rm -f $LOGNAME
echo `/usr/bin/date` 2>&1 >> $LOGNAME
chmod 666 $LOGNAME
sleep 1
mv -v $LOGNAME $LOGFILE
chmod 666 $LOGFILE