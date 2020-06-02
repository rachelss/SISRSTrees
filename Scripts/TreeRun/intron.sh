#!/bin/bash
#SBATCH --job-name="TreeBuild_intron"
#SBATCH --time=999:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="TreeBuild_intron"
#SBATCH --error="TreeBuild_intron"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b


iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/Jarvis_pi_m0_intron.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/Jarvis_pi_m1_intron.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/Jarvis_pi_m2_intron.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/Jarvis_pi_m3_intron.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/Jarvis_pi_m4_intron.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/Jarvis_pi_m5_intron.phylip-relaxed -m GTR+I+R -B 1000 -T 20

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*intron*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*intron*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*intron*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*intron*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*intron*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*intron*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m5/


mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*intron*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*intron*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*intron*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*intron*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*intron*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*intron*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m5/

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*intron*log /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*intron*log /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*intron*log /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*intron*log /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*intron*log /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*intron*log /home/erenada/BirdTree/Trees/AllSites/Gap/intron/m5/
