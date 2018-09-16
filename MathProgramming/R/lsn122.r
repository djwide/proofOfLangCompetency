set.seed(14)
Y=read.csv("Debt.csv")
Y=Y[,-1]


#proportion to the log of the likelihood
likeli = function(mu)
{
  -(sum((Y-mu)^2)/2) 
}


#Proportional to the log of the Prior
mu0 = 0
s = 10000
prior = function(mu)
{
  -((mu-(mu0)^2)/(2*s))
}

niter=10000 #number of iterations of MCMC
mus = matrix(NA,nrow=niter, ncol=3) #create a vector to store the samples
mus[1,]= c(-10,0,10) #start point
log(runif(1))
for(j in 2:niter){ 
  for(k in 1:dim(mus)[2]){
    prop = mus[j-1,k]+ rnorm(1,0,1/4) #the proposed move
    log.R = likeli(prop) + prior(prop)-likeli(mus[j-1,k])-prior(mus[j-1,k]) #the log of the ratio of the posterior over the prior
    if(log(runif(1))<log.R)
    {
      mus[j,k]=prop
    } 
    else
    {
      mus[j,k]=mus[j-1,k]
    }
  }
}
#plot(density(mus))

#check out diagnostics without eliminating burnin
chain1=as.mcmc(mus[,1])
chain2= as.mcmc(mus[,2])
chain3= as.mcmc(mus[,3])
samp= as.mcmc.list(list(c1=chain1,c2=chain2,c3=chain3))
plot(samp)
length(samp)


burnin = 1000
posterior = mus[-(1:burnin)]
#plot(density(posterior))
mean(posterior)

#trace plot
#plot(posterior,type="l")
library(coda)
samp = as.mcmc(mus)  
plot(samp)
acf(samp) # data has a correlation with values +-10 of it 
effectiveSize(samp)
1-rejectionRate(samp)