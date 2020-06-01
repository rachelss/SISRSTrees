for file in {1..5}
do
declare -a Msp=(`ls /home/erenada/BirdTree/Alignments/$1/$2/`)
echo ${Msp[@]}
done
