#!/bin/bash

HOST=$1
PORT=$2

# Make sure the port is open
nc -z -G 5 -w 5 "${HOST}" $PORT
if [ $? -gt 0 ]; then   
    echo -e "failed to connect to ${HOST} on port ${PORT}"
    exit 1
fi
