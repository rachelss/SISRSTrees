#!/bin/bash
#SBATCH --job-name="TreeBuild_lncRNA"
#SBATCH --time=999:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="TreeBuild_lncRNA"
#SBATCH --error="TreeBuild_lncRNA"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b


iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/Jarvis_pi_m0_lncRNA.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/Jarvis_pi_m1_lncRNA.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/Jarvis_pi_m2_lncRNA.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/Jarvis_pi_m3_lncRNA.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/Jarvis_pi_m4_lncRNA.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/Jarvis_pi_m5_lncRNA.phylip-relaxed -m GTR+I+R -B 1000 -T 20

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*lncRNA*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*lncRNA*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*lncRNA*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*lncRNA*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*lncRNA*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*lncRNA*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m5/


mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*lncRNA*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*lncRNA*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*lncRNA*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*lncRNA*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*lncRNA*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*lncRNA*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m5/

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*lncRNA*log /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*lncRNA*log /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*lncRNA*log /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*lncRNA*log /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*lncRNA*log /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*lncRNA*log /home/erenada/BirdTree/Trees/AllSites/Gap/lncRNA/m5/
