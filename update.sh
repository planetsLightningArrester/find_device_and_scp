#!/bin/bash

rm shell.sh
git reset --hard HEAD
git pull -f origin master --ff-only
chmod 777 shell.sh
chmod 777 update.sh