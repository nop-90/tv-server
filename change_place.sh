#!/bin/bash

if [ $# -eq 0 ]
then
    "No args given. 1 = TOULON, 2 = VANNES"
else
    if [ $1 -eq 1 ]
    then
        sed -i "s/VANNES/TOULON/g" ~/.bashrc
    elif [ $1 -eq 2 ]
    then
        sed -i "s/TOULON/VANNES/g" ~/.bashrc
    fi
fi
