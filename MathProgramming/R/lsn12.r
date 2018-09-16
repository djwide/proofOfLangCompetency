gw= read.csv("Groundwater.csv")
plot(density(gw[,1]))
qqnorm(gw[,1])
(qqline(gw[,1]))

ph= gw[,1]

library(geoR)

x.bar= mean(ph)
n= length(ph)
s2= var(ph)
niter= 1000

samples= matrix(NA, nrow= niter, ncol=2)
colnames(samples)= c("mu","s2")

for(i in 1:niter){
  samples[i,2]= rinvchisq(1,n-1,s2)
  samples[i,1]= rnorm(1,x.bar,samples[i,2]/n)
}

samples
mean(samples[,1])
mean(samples[,2])
samples= cbind(samples[,1:2],samples[,1]/sqrt(samples[,2]))
mean(samples[,3])
plot(density(samples[,3]))

library(coda)
samp = as.mcmc(samples)
plot(samp)
