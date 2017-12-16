#!/bin/bash


sudo find / -name $1 > ~/findi_$1.log
falar "terminou a busca a $1"  
