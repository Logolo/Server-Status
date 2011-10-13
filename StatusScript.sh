#!/bin/bash

HOST=`hostname`

DM=`date +%d\ %B`
YYMMDD=`date +%Y-%m-%d`
HHMM=`date +%H%M`

aide --check > /var/log/aide/check-$YYMMDD\_$HHMM.txt
cat /var/log/aide/check-$YYMMDD\_$HHMM.txt | mail -s "AIDE Report for $HOST - $DM " $WEBMASTER
