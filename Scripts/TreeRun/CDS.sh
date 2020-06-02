#!/bin/bash
#SBATCH --job-name="TreeBuild_CDS"
#SBATCH --time=999:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="TreeBuild_CDS"
#SBATCH --error="TreeBuild_CDS"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b


iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/Jarvis_pi_m0_CDS.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/Jarvis_pi_m1_CDS.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/Jarvis_pi_m2_CDS.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/Jarvis_pi_m3_CDS.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/Jarvis_pi_m4_CDS.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/Jarvis_pi_m5_CDS.phylip-relaxed -m GTR+I+R -B 1000 -T 20

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*CDS*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*CDS*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*CDS*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*CDS*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*CDS*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*CDS*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m5/


mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*CDS*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*CDS*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*CDS*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*CDS*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*CDS*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*CDS*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m5/

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*CDS*log /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*CDS*log /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*CDS*log /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*CDS*log /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*CDS*log /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*CDS*log /home/erenada/BirdTree/Trees/AllSites/Gap/CDS/m5/
