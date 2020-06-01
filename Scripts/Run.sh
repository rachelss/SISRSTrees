#!/bin/bash

for file in {0..5}
do
declare -a Msp=(`ls /home/erenada/BirdTree/Alignments/$1/$2/`)
echo "$(ls /home/erenada/BirdTree/Alignments/$1/$2/${Msp[$file]}/)"
done
