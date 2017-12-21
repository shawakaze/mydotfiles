#!/bin/sh
#WMFS status.sh example file
TIMING=1


playing_music()
{
	echo `mpc status | head -n 1`
}

statustext()
{
	wmfs -c status "top ^s[right;#12FF0A;$(playing_music)]"
}
while true;
do
statustext
	sleep $TIMING
done
