#!/bin/bash
#SBATCH --job-name="TreeBuild_UTR5"
#SBATCH --time=150:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="out_TreeBuild_UTR5"
#SBATCH --error="err_TreeBuild_UTR5"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b


iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/Jarvis_pi_m0_UTR5.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/Jarvis_pi_m1_UTR5.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/Jarvis_pi_m2_UTR5.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/Jarvis_pi_m3_UTR5.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/Jarvis_pi_m4_UTR5.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/Jarvis_pi_m5_UTR5.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*UTR5*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*UTR5*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*UTR5*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*UTR5*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*UTR5*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*UTR5*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m5/


mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*UTR5*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*UTR5*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*UTR5*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*UTR5*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*UTR5*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*UTR5*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m5/

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*UTR5*log /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*UTR5*log /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*UTR5*log /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*UTR5*log /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*UTR5*log /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*UTR5*log /home/erenada/BirdTree/Trees/AllSites/Gap/UTR5/m5/
