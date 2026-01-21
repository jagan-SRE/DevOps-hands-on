#!/bin/bash
if [ -f /etc/passwd ]
then
  echo "File exists"
else
  echo "File not found"
fi
