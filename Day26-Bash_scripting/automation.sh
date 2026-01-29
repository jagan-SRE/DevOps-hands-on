#!/bin/bash

DISK=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ $DISK -gt 80 ]
then
  echo "warning: Disk usage above 80%"
else
  echo "Disk usage is OK"
fi
