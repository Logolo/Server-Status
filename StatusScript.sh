#!/bin/bash

HOST=`hostname`
WEBMASTER=`cat /root/Webmaster.txt` # add email address in that file

DM=`date +%d\ %B`
YYMMDD=`date +%Y-%m-%d`
HHMM=`date +%H%M`

aide --check -report="file:///var/log/aide/check-$YYMMDD\_$HHMM.txt"
cat /var/log/aide/check-$YYMMDD\_$HHMM.txt | mail -s "AIDE Report for $HOST - $DM " $WEBMASTER
