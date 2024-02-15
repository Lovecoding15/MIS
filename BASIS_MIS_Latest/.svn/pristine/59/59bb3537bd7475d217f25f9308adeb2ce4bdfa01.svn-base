#!/bin/sh
# Copyright (C) 1996 by Allen Miglore.  All rights reserved.
# bbweb.sh is a standard shell script that can be used to start a
# BBx/Pro5 task in a Unix environment.  This script can be copied
# to the cgi directory, given whatever name you need, or it can
# be used as is by other scripts that would set PGM and optionally
# MEM before exec'ing this script.

# Set PGM and MEM to desired values for the bbx program and start size.
# (these can be set in another script, that execs this one.)
# cd /usr/thines/bbweb
PGM=appdir-showall.bbx
MEM=1024

# modify these values per your bbx configuration
MAXTRIES=5
ERRORLOG=/tmp/error.log
CONFIG=/home/basis/pro5/webconfig.bbx
BBXEXEC=/home/basis/pro5/pro5

MEM=${MEM:=512}
if [ "$PGM" = "" ]
	then
	echo "Content-type: text/plain"
	echo ""
	echo "Invalid pgm argument"
	exit
fi

umask 0
RETRIES=0

until [ $RETRIES -gt $MAXTRIES ]
do

$BBXEXEC -q -c$CONFIG -m$MEM $PGM - "$@" 2>/tmp/bberr.$$

if [ -s /tmp/bberr.$$ ]
then
	RETRIES=`expr $RETRIES + 1`
	sleep 1
	read msg </tmp/bberr.$$
	rm /tmp/bberr.$$ 2>/dev/null
else
	RETRIES=99
	rm /tmp/bberr.$$ 2>/dev/null
fi

done

if [ ! "$RETRIES" = "99" ]
then
	echo `date` $msg >>$ERRORLOG 2>/dev/null
	echo "Content-type: text/plain"
	echo ""
	echo "The database server is too busy.  Sorry about that."
	echo "Please try again later."
	echo ""
	echo "By the way, we have recorded this problem, and will add"
	echo "capacity if it happens frequently."
fi

