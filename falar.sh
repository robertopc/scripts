#!/bin/bash

# um simples script para servir como alias do espeak

espeak -vpt -s 100 -p 0 -a 200 "$1"
echo "$1" >> falar.sh.log
