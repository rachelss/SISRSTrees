#!/bin/bash


#declare -a TypesOfData=(`ls /home/erenada/BirdTree/Alignments/AllSites/Gap/m0 | cut -d "_" -f 4 | cut -d "." -f 1`)
declare -a Msp=(`ls /home/erenada/BirdTree/Alignments/$1/$2/`)

declare -a list=(`ls /home/erenada/BirdTree/Alignments/AllSites/Gap/${missing[*]}/`)


for data in ${list[*]}
do
  declare -a Files=(`ls /home/erenada/BirdTree/Alignments/$1/$2/${Msp[*]}`)
for missing in ${Msp[*]}
do
echo "/home/erenada/BirdTree/Alignments/AllSites/Gap/$missing/${Files[*]}"
done
done
