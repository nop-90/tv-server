#!/bin/bash
echo "Nom de la ville :"
read name
w_scan -x -c FR > fr-$name
scan fr-$name > $name.conf
