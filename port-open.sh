#!/bin/bash

HOST=$1
PORT=$2
touch test.txt
echo "Trying to connect to port $PORT on $HOST"

# Make sure the port is open
nc -z -G 5 -w 5 "${HOST}" $PORT
if [ $? -gt 0 ]; then   
    echo -e "failed to connect to ${HOST} on port ${PORT}"
    exit 1
fi
