#!/bin/bash
DIR="$( dirname "$0" )"
. $DIR/Setup_Status.sh

DF="`df -h`"

for EMAIL in $WEBMASTER; do
  echo -e "$DF" | mail -s "Disk Usage Report for $HOST - $DM " $EMAIL
done
