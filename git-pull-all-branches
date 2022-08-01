#!/bin/bash

# if passed path
if [ ! -z "$1" ]; then
    cd $1
fi
# extracted from https://stackoverflow.com/a/10312587/3329571
git branch -r | grep -v '\->' | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
git fetch --all
git pull --all
