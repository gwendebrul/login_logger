#!/bin/bash

source ./login_logger.sh/.env
IP=$(echo $SSH_CLIENT|grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}")
SERVERNAME=$(hostname)
USERNAME=$(whoami)
LOGIN_DATE=$(date +'%A %d %B, %H:%M')

LOGGED_STRING="$USERNAME logged in on $SERVERNAME on $LOGIN_DATE from $IP"

curl -X POST -H "Content-Type: application/json" -d "{\"value1\":\"$LOGGED_STRING\"}" $IFTTT_URL
