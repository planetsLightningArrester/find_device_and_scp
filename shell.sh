#!/bin/bash

# Hosts
HOST_760="192.168.43.10"
HOST_790="192.168.43.20"
HOST_800="192.168.43.30"
HOST_820="192.168.43.40"
HOST_840="192.168.43.50"

# MACs
MAC_760="00:00:00:00"
MAC_790="00:00:00:00"
MAC_800="00:00:00:00"
MAC_820="00:00:00:00"
MAC_840="00:00:00:00"

# 760
if [ $1 = 760 ]
then
    echo "Getting files from RPi on 760..."
    ping -q -c5 $HOST_760 > /dev/null
    if [ $? -gt 0 ]
    then
        echo "Out of range. Check if $MAC_760 is connected in the same network."
        exit 1
    fi

    scp -r pi@$HOST_760:/home/pi/OS1783/2020-12/* ~/storage/shared/Termux/OS1783/2020-12/
    exit 0
fi

# 790
if [ $1 = 790 ]
then
    echo "Getting files from RPi on 790..."
    ping -q -c5 $HOST_790 > /dev/null
    if [ $? -gt 0 ]
    then
        echo "Out of range. Check if $MAC_790 is connected in the same network."
        exit 1
    fi

    scp -r pi@$HOST_790:/home/pi/OS1783/2020-12/* ~/storage/shared/Termux/OS1783/2020-12/
    exit 0
fi

# 800
if [ $1 = 800 ]
then
    echo "Getting files from RPi on 800..."
    ping -q -c5 $HOST_800 > /dev/null
    if [$? -gt 0]
    then
        echo "Out of range. Check if $MAC_800 is connected in the same network."
        exit 1
    fi

    scp -r pi@$HOST_800:/home/pi/OS1783/2020-12/* ~/storage/shared/Termux/OS1783/2020-12/
    exit 0
fi

# 820
if [ $1 = 820 ]
then
    echo "Getting files from RPi on 820..."
    ping -q -c5 $HOST_820 > /dev/null
    if [$? -gt 0]
    then
        echo "Out of range. Check if $MAC_820 is connected in the same network."
        exit 1
    fi

    scp -r pi@$HOST_820:/home/pi/OS1783/2020-12/* ~/storage/shared/Termux/OS1783/2020-12/
    exit 0
fi

# 840
if [ $1 = 840 ]
then
    echo "Getting files from RPi on 840..."
    ping -q -c5 $HOST_840 > /dev/null
    if [$? -gt 0]
    then
        echo "Out of range. Check if $MAC_840 is connected in the same network."
        exit 1
    fi

    scp -r pi@$HOST_840:/home/pi/OS1783/2020-12/* ~/storage/shared/Termux/OS1783/2020-12/
    exit 0
fi