#!/bin/bash

declare -a TypesOfData=(`ls /home/erenada/BirdTree/Alignments/AllSites/Gap/m0 | cut -d "_" -f 4 | cut -d "." -f 1`)

for file in {0..5}
do
declare -a Msp=(`ls /home/erenada/BirdTree/Alignments/$1/$2/`)
declare -a Files=(`ls /home/erenada/BirdTree/Alignments/$1/$2/${Msp[$file]}/`)
echo $Msp[*] #${Files[*]} | tr " " "\n" >> FileNames.txt
done


# for type in TypesOfData
# do
#   grep '$type' FileNames.txt  | grep ${Msp[*]}
# done






  ##output directory: /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m0
