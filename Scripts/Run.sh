#!/bin/bash

declare -a TypesOfData=(`ls /home/erenada/BirdTree/Alignments/AllSites/Gap/m0 | cut -d "_" -f 4 | cut -d "." -f 1`)

for file in {0..5}
do
declare -a Msp=(`ls /home/erenada/BirdTree/Alignments/$1/$2/`)
declare -a Files=(`ls /home/erenada/BirdTree/Alignments/$1/$2/${Msp[$file]}/`)
echo ${Files[*]} |  tr " " "\n" >> FileNames.txt
done

declare -a TypesOfData=(`ls /home/erenada/BirdTree/Alignments/AllSites/Gap/m0 | cut -d "_" -f 4 | cut -d "." -f 1`)

IQCOMMAND="iqtree -s InputAlignment -m GTR+I+R -B 1000 -T 20"


for type in ${TypesOfData[@]}
do
paste "$IQCOMMAND" /home/erenada/BirdTree/Scripts/FileNames.txt
done

# for type in "${TypesOfData[@]}"
# do
# echo ${IQCOMMAND/InputAlignment/${TypesOfData[*]}}
# done




##output directory: /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m0
# grep $type /home/erenada/BirdTree/Scripts/FileNames.txt > $type
