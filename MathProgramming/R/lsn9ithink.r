Y=read.csv("Debt.csv")
Y=Y[,-1] #oops I accidentally saved a column of the row names; get rid of it
set.seed(14)

#make a function for the log of the kernel of the likelihood
#this should be a function of mu
#we can "hardwire" Y and sig2 = 1
likeli = function(mu){
  -sum(Y-mu)^2/2 #I need the sum() because I want the joint likelihood
}

#make a function for the log of the kernel of the prior distribution
#this needs to be a function of mu
#we can "hardwire" mu0=0 and s^20 = 10000
prior = function(mu){
  -mu^2/20000
}

niter=10000 #number of iterations of MCMC
mus = vector(length = niter) #create a vector to store the samples
mus[1]=0 #start point; arbitrary

for(j in 2:niter){ #loop through a lot of times
  prop = mus[j-1]+ rnorm(1,0,1)########################this should be the current position plus the proposed move - try rnorm(1,0,1) to get the proposed move
  R = likeli(prop)+prior(prop)-(likeli(mus[j-1])+prior(prop))###################the log of the ratio of the posterior at the proposed position over the likelihood of the ratio at the current position
  if(log(runif(1))<R){
    mus[j]=prop############value if I accept the propsal
  } 
  else{
    mus[j]=mus[j-1]##########value if I don't accept the proposal
  }
}
plot(density(mus))
burnin= 1000
post= mus[-(1:burnin)]
plot(density(post))
mean(post)

