#!/bin/bash

rm 760.sh 790.sh 800.sh 820.sh 840.sh
git reset --hard HEAD
git pull -f origin master
chmod 777 shell.sh
chmod 777 update.sh