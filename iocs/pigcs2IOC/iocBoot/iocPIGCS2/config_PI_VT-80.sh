#!/bin/bash

# Variables
HOST="192.168.105.24"
PORT="4005"

echo Starting motor configuration ...

# Use netcat to send commands
{
  echo "SPA 1 0x8 1.000000"
  sleep 1
  echo "SPA 1 0xa 10.0000000"
  sleep 1
  echo "ACC 1 100.0000000"
  sleep 1
  echo "DEC 1 100.0000000"
  sleep 1
  echo "SPA 1 0xe 409600"
  sleep 1
  echo "SPA 1 0xf 1"
  sleep 1
  echo "SPA 1 0x13 0"
  sleep 1
  echo "SPA 1 0x14 0"
  sleep 1
  echo "SPA 1 0x15 200.0000000"
  sleep 1
  echo "SPA 1 0x16 0.000000"
  sleep 1
  echo "SPA 1 0x17 0.000000"
  sleep 1
  echo "SPA 1 0x18 0"
  sleep 1
  echo "SPA 1 0x1a 0"
  sleep 1
  echo "SPA 1 0x2f 200.0000000"
  sleep 1
  echo "SPA 1 0x30 0.000000"
  sleep 1
  echo "SPA 1 0x31 0"
  sleep 1
  echo "SPA 1 0x32 0"
  sleep 1
  echo "SPA 1 0x36 0"
  sleep 1
  echo "SPA 1 0x3c PI_VT-80"
  sleep 1 
  echo "SPA 1 0x3f 0.100000"
  sleep 1
  echo "SPA 1 0x40 500"
  sleep 1
  echo "SPA 1 0x41 700"
  sleep 1
  echo "SPA 1 0x42 5"
  sleep 1
  echo "SPA 1 0x47 0"
  sleep 1
  echo "VEL 1 5.0000000"
  sleep 1
  echo "SPA 1 0x4a 100.0000000"
  sleep 1
  echo "SPA 1 0x4b 100.0000000"
  sleep 1
  echo "SPA 1 0x50 1.0000000"
  sleep 1
  echo "SPA 1 0x5a 10000"
  sleep 1
  echo "SPA 1 0x5b 1"
  sleep 1
  echo "SPA 1 0x5c 0"
  sleep 1
  echo "SPA 1 0x5d 0"
  sleep 1
  echo "SPA 1 0x5e 0"
  sleep 1
  echo "SPA 1 0x5f 0"
  sleep 1
  echo "SPA 1 0x60 0"
  sleep 1
  echo "SPA 1 0x61 0"
  sleep 1
  echo "SPA 1 0x63 0.050000"
  sleep 1
  echo "SPA 1 0x70 0"
  sleep 1
  echo "SPA 1 0x71 1"
  sleep 1
  echo "SPA 1 0x77 0"
  sleep 1
  echo "SPA 1 0x78 0.000000"
  sleep 1
  echo "SPA 1 0x79 0.000000"
  sleep 1
  echo "SPA 1 0x9a 10000"
  sleep 1
  echo "SPA 1 0x9b 1"
  sleep 1
  echo "SPA 1 0x3040 0.350000"
  sleep 1
  echo "SPA 1 0x3041 0.040000"
  sleep 1
  echo "SPA 1 0x3094 0"
  sleep 1
  echo "SPA 1 0x3095 24.000000"
  sleep 1
  echo "SPA 1 0x3096 24.000000"
  sleep 1
  echo "SPA 1 0x3101 0"
  sleep 1
  echo "SPA 1 0x3102 0"
  sleep 1
  echo "SPA 1 0x3111 0"
  sleep 1
  echo "SPA 1 0x3112 0"
  sleep 1
  echo "SPA 1 0x3113 0"
  sleep 1
  echo "SPA 1 0x3114 0"
  sleep 1
  echo "SPA 1 0x3116 0.000000"
  sleep 1
  echo "SPA 1 0x3117 0.000000"
  sleep 1
  echo "SPA 1 0x3121 0"
  sleep 1
  echo "SPA 1 0x3122 0"
  sleep 1
  echo "SPA 1 0x3123 0"
  sleep 1
  echo "SPA 1 0x3124 0"
  sleep 1
  echo "SPA 1 0x3003900 0"
  sleep 1
  echo "SPA 1 0x7000000 -2621.4400000"
  sleep 1
  echo "SPA 1 0x7000001 2621.4400000"
  sleep 1
  echo "SPA 1 0x7000601 MM"
  sleep 1
} | nc $HOST $PORT -w 1

# Bash script execution result
echo Motor configured successfully!
