#!/bin/bash

# Hosts
HOST_760="192.168.43.10"

# MACs
MAC_760="00:00:00:00"

# 760
if [[ $1 = 760 ]]
then
    echo "Getting files from RPi on 760..."
    ping -q -c5 $HOST_760 > /dev/null
    if [[ $? -gt 0 ]]
    then
        echo "Out of range. Check if $MAC_760 is connected in the same network."
        exit 1
    fi

    scp -r pi@$HOST_760:/home/pi/2020-12/* ~/storage/shared/Termux/2020-12/
    echo "Done!"
    exit 0
fi