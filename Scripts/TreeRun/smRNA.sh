#!/bin/bash
#SBATCH --job-name="TreeBuild_smRNA"
#SBATCH --time=999:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="TreeBuild_smRNA"
#SBATCH --error="TreeBuild_smRNA"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b


iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/Jarvis_pi_m0_smRNA.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/Jarvis_pi_m1_smRNA.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/Jarvis_pi_m2_smRNA.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/Jarvis_pi_m3_smRNA.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/Jarvis_pi_m4_smRNA.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/Jarvis_pi_m5_smRNA.phylip-relaxed -m GTR+I+R -B 1000 -T 20

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*smRNA*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*smRNA*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*smRNA*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*smRNA*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*smRNA*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*smRNA*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m5/


mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*smRNA*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*smRNA*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*smRNA*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*smRNA*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*smRNA*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*smRNA*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m5/

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*smRNA*log /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*smRNA*log /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*smRNA*log /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*smRNA*log /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*smRNA*log /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*smRNA*log /home/erenada/BirdTree/Trees/AllSites/Gap/smRNA/m5/
