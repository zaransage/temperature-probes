#!/bin/bash
# Dana Marble
# 6.30.2016
# This is a start script to invoke the real execution script
# Additional flags added for install

INPUT=$1

if [[ ${INPUT} == 'install' ]]
then
/bin/cp /opt/temp/temperature_probe.sh /etc/init.d/temperature_probe.sh
/bin/chmod +x /etc/init.d/temperature_probe.sh
cp /opt/temp/S03temperature.sh /etc/rc3.d/S03tempature.sh
fi

/bin/chmod +x /opt/temp/prod_temp.sh
/bin/chmod +x /opt/temp/bin/pcsensor
/bin/chown -R :users /opt/temp/


if [[ ${INPUT} == start ]]
then
/bin/bash /opt/temp/prod_temp.sh &
fi

if [[ ${INPUT} == stop ]]
then
ps ax |grep prod_temp.sh | grep -v grep | awk '{print $1}'| xargs -i kill {}
echo "Should be killed."
fi

if [[ ${INPUT} == '' ]]
then
echo "Start, Stop or Install are the options after the command available."
fi

if [[ ${INPUT} == 'status' ]]
then
echo "Current process information:"
ps ax | grep prod_temp.sh | grep -v grep
fi

