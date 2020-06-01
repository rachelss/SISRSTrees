#!/bin/bash

declare -a TypesOfData=(`ls /home/erenada/BirdTree/Alignments/AllSites/Gap/m0 | cut -d "_" -f 4 | cut -d "." -f 1`)
declare -a Msp=(`ls /home/erenada/BirdTree/Alignments/$1/$2/`)


for data in ${TypesOfData[*]}
do
  declare -a Files=(`ls /home/erenada/BirdTree/Alignments/$1/$2/`)
for missing in ${Msp[*]}
do
echo "/home/erenada/BirdTree/Alignments/AllSites/Gap/$missing/$data"
done
done
