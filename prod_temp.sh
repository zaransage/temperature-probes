#!/bin/bash
# Dana Marble
# PC Temperature Sensor Script (retrieved from archive and cleaned for deployment)
# 8.6.2022 (Original ~2016)

BINARY='/opt/temp/bin/pcsensor'

LOG='/home/${USER}/sensor1.txt'

PORT=$1

LOOP='600'


while true
do
	sleep ${LOOP}  
	echo $(echo $HOSTNAME && ${BINARY}) >> ${LOG}
done

