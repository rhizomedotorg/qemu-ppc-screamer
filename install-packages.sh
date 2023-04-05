#!/bin/bash

while read -r line; do
    sudo apt install -y $line;
done < pkglist.txt