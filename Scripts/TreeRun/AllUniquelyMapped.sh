#!/bin/bash
#SBATCH --job-name="TreeBuild_AllUniquelyMapped"
#SBATCH --time=150:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="out_TreeBuild_AllUniquelyMapped"
#SBATCH --error="err_TreeBuild_AllUniquelyMapped"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b


iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/Jarvis_pi_m0_AllUniquelyMapped.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/Jarvis_pi_m1_AllUniquelyMapped.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/Jarvis_pi_m2_AllUniquelyMapped.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/Jarvis_pi_m3_AllUniquelyMapped.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/Jarvis_pi_m4_AllUniquelyMapped.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO
iqtree -s /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/Jarvis_pi_m5_AllUniquelyMapped.phylip-relaxed -m GTR+I+R -B 1000 -nt AUTO

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*AllUniquelyMapped*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*AllUniquelyMapped*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*AllUniquelyMapped*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*AllUniquelyMapped*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*AllUniquelyMapped*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*AllUniquelyMapped*iqtree /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m5/


mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*AllUniquelyMapped*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*AllUniquelyMapped*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*AllUniquelyMapped*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*AllUniquelyMapped*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*AllUniquelyMapped*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*AllUniquelyMapped*treefile /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m5/

mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m0/*AllUniquelyMapped*log /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m0/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m1/*AllUniquelyMapped*log /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m1/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m2/*AllUniquelyMapped*log /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m2/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m3/*AllUniquelyMapped*log /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m3/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m4/*AllUniquelyMapped*log /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m4/
mv /home/erenada/BirdTree/Alignments/AllSites/Gap/m5/*AllUniquelyMapped*log /home/erenada/BirdTree/Trees/AllSites/Gap/AllUniquelyMapped/m5/
