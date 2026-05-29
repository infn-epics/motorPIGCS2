#!/bin/bash

# Variables
HOST="192.168.105.24"
PORT="4005"

echo Starting motor referencing ...

# Use netcat to send commands
{
  echo "RON 1 0"
  sleep 1
  echo "POS 1 0"
  sleep 1
  echo "POS?"
  sleep 1
} | nc $HOST $PORT -w 1

# Bash script execution result
echo Motor referenced successfully!

echo Check on config parameters before file:
{
    echo "SPA? 1 0xe"
    sleep 1
    echo "SPA? 1 0x7000001"
    sleep 1
} | nc $HOST $PORT -w 1
