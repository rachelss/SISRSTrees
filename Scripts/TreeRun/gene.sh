#!/bin/bash
#SBATCH --job-name="TreeBuild_gene"
#SBATCH --time=150:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="out_TreeBuild_gene"
#SBATCH --error="err_TreeBuild_gene"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b


iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/Jarvis_pi_m0_gene.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/Jarvis_pi_m1_gene.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/Jarvis_pi_m2_gene.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/Jarvis_pi_m3_gene.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/Jarvis_pi_m4_gene.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/Jarvis_pi_m5_gene.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*gene*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*gene*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*gene*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*gene*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*gene*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*gene*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m5/


mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*gene*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*gene*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*gene*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*gene*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*gene*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*gene*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m5/

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*gene*log /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*gene*log /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*gene*log /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*gene*log /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*gene*log /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*gene*log /home/erenada/BirdTree/Trees/AllSites/Gap/gene/m5/
