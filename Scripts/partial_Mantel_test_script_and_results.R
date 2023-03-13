
##########Partial mantel test 

### Install and load R package vegan

### Load the 3 matrices necessary to run the partial Mantel test: xdis = LSI matrix; ydis = IBM matrix; zdis = TDM
xdis<- read.csv("Path to the LSI matrix.csv", header=FALSE)
ydis<- read.csv("Path to the IBM matrix.csv", header=FALSE)
zdis<- read.csv("Path to the TDM matrix.csv", header=FALSE)

### Run partial Mantel test
mantel.partial(ydis, ydis, ydis, method = "pearson", permutations = 9999)

### Print out of all the tests results


###Sub-phrase level
######02a1:

#Mantel statistic r: 0.02324 
#      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#    90%     95%   97.5%     99% 
#0.00623 0.00805 0.00962 0.01126 
#Permutation: free
#Number of permutations: 9999

######02b1:

#Mantel statistic r: 0.09654 
#      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#    90%     95%   97.5%     99% 
#0.00858 0.01110 0.01329 0.01601 
#Permutation: free
#Number of permutations: 9999

######02c1:

#Mantel statistic r: 0.1089 
#      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#    90%     95%   97.5%     99% 
#0.00953 0.01257 0.01519 0.01779 
#Permutation: free
#Number of permutations: 9999

######02c2a:

#Mantel statistic r: 0.1792 
#      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0178 0.0229 0.0276 0.0328 
#Permutation: free
#Number of permutations: 9999

######02c2b:

#Mantel statistic r: 0.1834 
#      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0254 0.0336 0.0401 0.0487 
#Permutation: free
#Number of permutations: 9999

######02c3:

#Mantel statistic r: 0.1444 
#      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0238 0.0306 0.0364 0.0432 
#Permutation: free
#Number of permutations: 9999

######02d1:

#Mantel statistic r: -0.003507 
#      Significance: 0.7062 

#Upper quantiles of permutations (null model):
#    90%     95%   97.5%     99% 
#0.00828 0.01004 0.01184 0.01249 
#Permutation: free
#Number of permutations: 9999

######02d2:

#Mantel statistic r: 0.06904 
#      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0114 0.0145 0.0174 0.0204 
#Permutation: free
#Number of permutations: 9999

######02e1:

#Mantel statistic r: 0.01573 
#      Significance: 0.069 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0142 0.0165 0.0179 0.0190 
#Permutation: free
#Number of permutations: 9999

######02f1:

#Mantel statistic r: 0.1507 
#      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0161 0.0214 0.0260 0.0306 
#Permutation: free
#Number of permutations: 9999

######02g1:

#Mantel statistic r: 0.1561 
#      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0187 0.0241 0.0287 0.0347 
#Permutation: free
#Number of permutations: 9999

######03m1:

#Mantel statistic r: 0.01381 
#      Significance: 0.288 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0334 0.0435 0.0515 0.0624 
#Permutation: free
#Number of permutations: 9999

######03n1:

#Mantel statistic r: 0.01646 
#      Significance: 0.2501 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0330 0.0433 0.0517 0.0623 
#Permutation: free
#Number of permutations: 9999

######03o1a:

#Mantel statistic r: 0.05222 
#      Significance: 0.0094 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0276 0.0352 0.0429 0.0512 
#Permutation: free
#Number of permutations: 9999

######03o1b:

#Mantel statistic r: 0.1414 
#      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0419 0.0553 0.0662 0.0787 
#Permutation: free
#Number of permutations: 9999



###Song level

######02 SongCycles no Rep:

#Mantel statistic r: 0.2538 
#      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0194 0.0255 0.0313 0.0378 
#Permutation: free
#Number of permutations: 9999

######02 SongCycles With Rep:

#Mantel statistic r: 0.2544 
#      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0188 0.0241 0.0286 0.0342 
#Permutation: free
#Number of permutations: 9999

######03 Song Cycles With Rep:

#Mantel statistic r: 0.08777 
#      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0246 0.0321 0.0398 0.0473 
#Permutation: free
#Number of permutations: 9999

######03 Song Cycles No Rep:

#Mantel statistic r: 0.101 
      Significance: 1e-04 

#Upper quantiles of permutations (null model):
#   90%    95%  97.5%    99% 
#0.0200 0.0264 0.0320 0.0394 
#Permutation: free
#Number of permutations: 9999



####################Bonferroni Correction of p-values

p_subP <- c(0.0001,0.0001,0.0001,0.0001,0.0001,0.0001,0.7062,0.0001,0.069,0.0001,0.0001,0.288,0.2501,0.0094,0.0001)
p_song <- c(0.0001,0.0001,0.0001,0.0001)
p_adjusted_bonf <- p.adjust(p_subP,"bonferroni",n = length(p_subP))
p_adjusted_holm <- p.adjust(p_subP,"holm",n = length(p_subP))
p_song_adjusted_holm <- p.adjust(p_song,"holm",n = length(p_song))
