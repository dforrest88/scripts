#!/bin/bash

HOST=$1
PORT=$2

echo "Trying to connect to port $PORT on $HOST"

curl ${HOST}:${PORT}

# Make sure the port is open
nc -z -w5 $HOST $PORT
if [ $? -gt 0 ]; then   
    echo -e "failed to connect to ${HOST} on port ${PORT}"
    exit 1
fi
