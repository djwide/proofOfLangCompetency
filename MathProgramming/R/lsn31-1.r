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

niter=1000 #number of iterations of MCMC
mus = matrix(NA, nrow = niter, ncol = 3) #create a vector to store the samples
mus[1,]=c(-10,0,10) #start point

for(j in 2:niter){ 
  for(k in 1:dim(mus)[2]){
    prop = mus[j-1,k]+ rnorm(1,0,1/400) #the proposed move
    log.R = likeli(prop) + prior(prop)-likeli(mus[j-1,k])-prior(mus[j-1,k]) #the log of the ratio of the posterior over the prior
    if(log(runif(1))<log.R)
    {
      mus[j,k]=prop
    } 
    else
    {
      mus[j,k]=mus[j-1,k]
    }
  }#k
}#j
#plot(density(mus))

#check our diagnostics without eliminating burnin
chain1 = as.mcmc(mus[-(1:burnin),1])
chain2 = as.mcmc(mus[-(1:burnin),2])
chain3 = as.mcmc(mus[-(1:burnin),3])
samp=as.mcmc.list(list(c1=chain1,c2=chain2,c3=chain3))
plot(samp) #this is the key plot to detect that the chains have not converged
length(samp)
library(MASS)
colMeans(mus)
burnin = 1000
posterior = mus[-(1:burnin)]
plot(density(posterior))
mean(posterior)

#trace plot
#plot(posterior,type="l")
library(coda)
samp = as.mcmc(posterior)  
plot(samp)
#acf(samp) # data has a correlation with values +-10 of it 
effectiveSize(samp)
1-rejectionRate(samp)
#plot(mus[,1], type="l")
lines