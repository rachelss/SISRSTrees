#!/bin/bash
#SBATCH --job-name="TreeBuild_genic-other"
#SBATCH --time=999:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="TreeBuild_genic-other"
#SBATCH --error="TreeBuild_genic-other"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b


iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/Jarvis_pi_m0_genic-other.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/Jarvis_pi_m1_genic-other.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/Jarvis_pi_m2_genic-other.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/Jarvis_pi_m3_genic-other.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/Jarvis_pi_m4_genic-other.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/Jarvis_pi_m5_genic-other.phylip-relaxed -m GTR+I+R -B 1000 -T 20

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*genic-other*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*genic-other*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*genic-other*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*genic-other*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*genic-other*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*genic-other*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m5/


mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*genic-other*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*genic-other*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*genic-other*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*genic-other*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*genic-other*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*genic-other*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m5/

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*genic-other*log /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*genic-other*log /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*genic-other*log /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*genic-other*log /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*genic-other*log /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*genic-other*log /home/erenada/BirdTree/Trees/AllSites/Gap/genic-other/m5/
