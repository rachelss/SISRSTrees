ls /home/erenada/BirdTree/Alignments/AllSites/Gap/m0 | cut -d "_" -f 4 | cut -d "." -f 1 > list.txt

TypeofData=(`list.txt`)

Msp=(m0,m1,m2,m3,m4,m5)

for data ${TypeofData[@]}
do
mkdir /home/erenada/BirdTree/Trees/${TypeofData[@]}/${Msp[@]}
done
