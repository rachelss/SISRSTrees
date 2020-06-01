for file in {1..12}
do
declare -a Msp=(`ls /home/erenada/BirdTree/Alignments/$1/$2/`)
declare -a files=(`ls /home/erenada/BirdTree/Alignments/$1/$2/${Msp[*]}`)
done
