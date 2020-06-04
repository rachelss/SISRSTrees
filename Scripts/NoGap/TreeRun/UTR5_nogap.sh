#!/bin/bash
#SBATCH --job-name="TreeBuild_UTR5_nogap"
#SBATCH --time=150:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="out_TreeBuild_UTR5_nogap"
#SBATCH --error="err_TreeBuild_UTR5_nogap"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b


iqtree -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m0/Jarvis_pi_m0_UTR5_nogap.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m1/Jarvis_pi_m1_UTR5_nogap.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m2/Jarvis_pi_m2_UTR5_nogap.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m3/Jarvis_pi_m3_UTR5_nogap.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m4/Jarvis_pi_m4_UTR5_nogap.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m5/Jarvis_pi_m5_UTR5_nogap.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO

mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m0/*UTR5_nogap*iqtree /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m1/*UTR5_nogap*iqtree /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m2/*UTR5_nogap*iqtree /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m3/*UTR5_nogap*iqtree /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m4/*UTR5_nogap*iqtree /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m5/*UTR5_nogap*iqtree /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m5/


mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m0/*UTR5_nogap*treefile /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m1/*UTR5_nogap*treefile /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m2/*UTR5_nogap*treefile /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m3/*UTR5_nogap*treefile /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m4/*UTR5_nogap*treefile /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m5/*UTR5_nogap*treefile /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m5/

mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m0/*UTR5_nogap*log /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m1/*UTR5_nogap*log /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m2/*UTR5_nogap*log /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m3/*UTR5_nogap*log /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m4/*UTR5_nogap*log /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m5/*UTR5_nogap*log /home/erenada/BirdTree/Trees/AllSites/NoGap/UTR5_nogap/m5/
