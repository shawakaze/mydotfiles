#!/bin/sh
#WMFS status.sh example file
TIMING=1
statustext()
{
	wmfs -c status "top `mpc status`"
}
while true;
do
statustext
	sleep $TIMING
done
