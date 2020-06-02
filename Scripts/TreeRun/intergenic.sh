#!/bin/bash
#SBATCH --job-name="TreeBuild_intergenic"
#SBATCH --time=999:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="TreeBuild_intergenic"
#SBATCH --error="TreeBuild_intergenic"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b


iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/Jarvis_pi_m0_intergenic.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/Jarvis_pi_m1_intergenic.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/Jarvis_pi_m2_intergenic.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/Jarvis_pi_m3_intergenic.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/Jarvis_pi_m4_intergenic.phylip-relaxed -m GTR+I+R -B 1000 -T 20
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/Jarvis_pi_m5_intergenic.phylip-relaxed -m GTR+I+R -B 1000 -T 20

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*intergenic*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*intergenic*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*intergenic*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*intergenic*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*intergenic*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*intergenic*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m5/


mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*intergenic*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*intergenic*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*intergenic*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*intergenic*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*intergenic*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*intergenic*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m5/

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*intergenic*log /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*intergenic*log /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*intergenic*log /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*intergenic*log /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*intergenic*log /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*intergenic*log /home/erenada/BirdTree/Trees/AllSites/Gap/intergenic/m5/
