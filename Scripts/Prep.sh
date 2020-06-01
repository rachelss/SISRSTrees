#!/bin/bash

# go into the related folder 

cd /home/erenada/BirdTree/Alignments/"$1"/"$2"/
TypesOfData=$(ls /home/erenada/BirdTree/Alignments/AllSites/Gap/m0 | cut -d "_" -f 4 | cut -d "." -f 1)
Msp=("m0","m1","m2","m3","m4","m5")

for i in ${TypesOfData[*]}
do
mkdir /home/erenada/BirdTree/Trees/${TypesOfData[*]}
done
#Make folders 

cd /home/erenada/BirdTree/Trees/

for i in $TypesOfData
do
mkdir "$i"
done

for m in ${#TypesOfData[@]}
do
mkdir /home/erenada/BirdTree/Trees/${TypesOfData[@]}/${Msp[*]}
done


