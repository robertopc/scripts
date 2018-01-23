#!/bin/bash

PROCESS=`pgrep $1`

while true; do
  if [ "$PROCESS" != "`pgrep $1`" ]; then
    echo "shutdown now!"
    exit 
  else
    echo "$1 alive..."
  fi
  sleep 5
done

