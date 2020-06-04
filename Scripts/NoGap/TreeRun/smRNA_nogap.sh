#!/bin/bash
#SBATCH --job-name="TreeBuild_smRNA_nogap"
#SBATCH --time=120:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="out_TreeBuild_smRNA_nogap"
#SBATCH --error="err_TreeBuild_smRNA_nogap"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b


iqtree -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m0/Jarvis_pi_m0_smRNA_nogap.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m1/Jarvis_pi_m1_smRNA_nogap.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m2/Jarvis_pi_m2_smRNA_nogap.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m3/Jarvis_pi_m3_smRNA_nogap.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m4/Jarvis_pi_m4_smRNA_nogap.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/NoGap/m5/Jarvis_pi_m5_smRNA_nogap.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO

mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m0/*smRNA_nogap*iqtree /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m1/*smRNA_nogap*iqtree /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m2/*smRNA_nogap*iqtree /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m3/*smRNA_nogap*iqtree /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m4/*smRNA_nogap*iqtree /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m5/*smRNA_nogap*iqtree /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m5/


mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m0/*smRNA_nogap*treefile /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m1/*smRNA_nogap*treefile /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m2/*smRNA_nogap*treefile /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m3/*smRNA_nogap*treefile /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m4/*smRNA_nogap*treefile /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m5/*smRNA_nogap*treefile /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m5/

mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m0/*smRNA_nogap*log /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m1/*smRNA_nogap*log /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m2/*smRNA_nogap*log /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m3/*smRNA_nogap*log /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m4/*smRNA_nogap*log /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/NoGap/m5/*smRNA_nogap*log /home/erenada/BirdTree/Trees/AllSites/NoGap/smRNA_nogap/m5/
