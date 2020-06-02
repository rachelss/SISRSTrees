#!/bin/bash
#SBATCH --job-name="TreeBuild_pseudogene"
#SBATCH --time=999:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="TreeBuild_pseudogene"
#SBATCH --error="TreeBuild_pseudogene"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b


iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/Jarvis_pi_m0_pseudogene.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/Jarvis_pi_m1_pseudogene.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/Jarvis_pi_m2_pseudogene.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/Jarvis_pi_m3_pseudogene.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/Jarvis_pi_m4_pseudogene.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/Jarvis_pi_m5_pseudogene.phylip-relaxed -m GTR+I+R -B 1000 -T 20

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*pseudogene*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*pseudogene*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*pseudogene*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*pseudogene*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*pseudogene*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*pseudogene*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m5/


mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*pseudogene*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*pseudogene*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*pseudogene*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*pseudogene*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*pseudogene*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*pseudogene*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m5/

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*pseudogene*log /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*pseudogene*log /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*pseudogene*log /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*pseudogene*log /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*pseudogene*log /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*pseudogene*log /home/erenada/BirdTree/Trees/AllSites/Gap/pseudogene/m5/
