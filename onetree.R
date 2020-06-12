library(ape)
library(tidyverse)

combined_outgroup <- c("TinGut","StrCam")
files <- list.files(pattern = "treefile", recursive = TRUE)
t <- read.tree(files[[1]])

combined_chronos <- root.phylo(t, outgroup=combined_outgroup,resolve.root = TRUE)
write.tree(combined_chronos, "t.tre")

#### root all trees and rewrite (done, don't repeat)
for (f in files){
  t <- read.tree(f)
  t2 <- root.phylo(t, outgroup=combined_outgroup,resolve.root = TRUE)
  write.tree(t2, paste0(f,".chro"))
}

####### Chronos method (or skip to reltime)

node <- c(
  getMRCA(combined_chronos, tip = c("TinGut","PicPub") ), # Root of tree
  getMRCA(combined_chronos, tip = c("MelGal","PicPub") ), # Neognathae
  getMRCA(combined_chronos, tip = c("PodCri","PicPub") ) # Neoaves
) 
age.min <- c(103.6,93.2,77) # TimeTree.org
age.max <- c(115.5,104.6,89) # TimeTree.org
soft.bounds <- c(FALSE,FALSE,FALSE)
combined_cal <- data.frame(node, age.min, age.max, soft.bounds) 

combined_edge_list <- compute.brlen(combined_chronos,1)$edge.length
combined_branch_list <- branching.times(compute.brlen(combined_chronos,1)) 

for(i in 1:100){
  combined_chronos_iter <- chronos(combined_chronos,calibration = combined_cal)
  combined_edge_list <- rbind(combined_edge_list, combined_chronos_iter$edge.length)
  combined_branch_list <- rbind(combined_branch_list, branching.times(combined_chronos_iter))
}

combined_edge_list <- combined_edge_list[-1,]
combined_branch_list <- combined_branch_list[-1,]

combined_branches <- colnames(combined_branch_list)

combined_medians <- c()
for(i in 1:ncol(combined_branch_list)){
  combined_medians[colnames(combined_branch_list)[i]] <- median(combined_branch_list[,i])
}

combined_timetree <- compute.brlen(combined_chronos,1)
combined_median_edge <- c()
for(i in 1:ncol(combined_edge_list)){
  combined_median_edge<-c(combined_median_edge,median(combined_edge_list[,i]))
}
combined_timetree$edge.length <- combined_median_edge
plot(combined_timetree)
axisPhylo()
abline(v=c(combined_medians["Root"]-109,
           combined_medians["Root"]-99,
           combined_medians["Root"]-83))

########## Reltime method
#run ipynb
chr_files <- list.files(pattern = ".chro.tre", recursive = TRUE)
t <- read.tree(chr_files[[1]])
plot(t)
