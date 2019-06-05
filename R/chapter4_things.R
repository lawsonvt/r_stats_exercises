library(rethinking)

# GAUSSIAN DISTRIBUTIONS

growth <- replicate( 10000 , prod( 1 + runif(12,0,0.1) ) )
dens( growth , norm.comp=TRUE )

big <- replicate( 10000 , prod( 1 + runif(12,0,0.5) ) )
small <- replicate( 10000 , prod( 1 + runif(12,0,0.01) ) )

dens(big, norm.comp = T)
dens(small, norm.comp = T)

# but wait, there's more!
log.big <- replicate( 10000 , log(prod(1 + runif(12,0,0.5))) )

dens(log.big, norm.comp=T)
