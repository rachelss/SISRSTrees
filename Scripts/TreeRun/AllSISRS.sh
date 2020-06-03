#!/bin/bash
#SBATCH --job-name="TreeBuild_ALLSISRS"
#SBATCH --time=150:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="out_TreeBuild_ALLSISRS"
#SBATCH --error="err_TreeBuild_ALLSISRS"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b


iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/Jarvis_pi_m0_AllSISRS.phylip-relaxed -m GTR+I+R -B 1000 -T AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/Jarvis_pi_m1_AllSISRS.phylip-relaxed -m GTR+I+R -B 1000 -T AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/Jarvis_pi_m2_AllSISRS.phylip-relaxed -m GTR+I+R -B 1000 -T AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/Jarvis_pi_m3_AllSISRS.phylip-relaxed -m GTR+I+R -B 1000 -T AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/Jarvis_pi_m4_AllSISRS.phylip-relaxed -m GTR+I+R -B 1000 -T AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/Jarvis_pi_m5_AllSISRS.phylip-relaxed -m GTR+I+R -B 1000 -T AUTO

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*AllSISRS*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*AllSISRS*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*AllSISRS*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*AllSISRS*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*AllSISRS*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*AllSISRS*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m5/


mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*AllSISRS*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*AllSISRS*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*AllSISRS*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*AllSISRS*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*AllSISRS*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*AllSISRS*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m5/

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*AllSISRS*log /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*AllSISRS*log /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*AllSISRS*log /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*AllSISRS*log /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*AllSISRS*log /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*AllSISRS*log /home/erenada/BirdTree/Trees/AllSites/Gap/AllSISRS/m5/
