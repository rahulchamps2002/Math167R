L = list(c('a','b','c','d'), c(1,2,3,4,5))
L
L2 = sapply(L, FUN=function(n){n[1:length(n)-1]})
L2

            
