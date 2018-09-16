
dat = read.csv("nhefs.csv")
library(MASS)

dat = read.csv("GLOW.csv")
head(dat)
dat$Risk=as.factor(dat$Risk)
X.wint=model.matrix(Fracture~.,dat)
head(X.wint)
Y = dat$Fracture
X = X.wint[,-1] 

#specify prior hyper parameters
priorBmean = rep(0,dim(X.wint)[2])
pBvariance = (log(15)/2)^2
pBcovariance = diag(pBvariance, length(priorBmean))
pBinvcovariance = solve(pBcovariance)


log.like = function(beta,x,y){
  ll = sum(y*((x%*%beta)- log(1+exp(x%*%beta)))+(1-y)*(-log(1+exp(x%*%beta))))
  return(ll)
}

#function calculates the kernal of the prior
log.prior = function(beta,mu,sigma.inv){
  logP = -1/2*(beta-mu)%*%sigma.inv%*%(beta-mu)
  return(logP)
}


#setting out initial values for beta
B = rep(0,dim(X.wint)[2])

#test functions to ensure they work
#log.like(B,X.wint,Y)
#log.prior(B,priorBmean,pBinvcovariance)

#specify the number of posterior sample to take
niter = 10000
#create a matrix to store post samples
samples = matrix(NA,nrow = niter, ncol = length(B))
samples[1,]=B
#colnames(samples) = c("Intercept", colnames(X))
m1 = glm(Y~as.matrix(X), family = binomial)
summary(m1)
summary(m1)$cov.unscaled
set.seed(14)
for (i in 1:(niter-1)){
  #calc log posterior at current values
  lpost.cur = log.like(samples[i,],X.wint, Y)+log.prior(samples[i,],priorBmean,pBinvcovariance)
  Bprop = samples[i,] + mvrnorm(1,rep(0,length(B)),0.5*summary(m1)$cov.unscaled)
  lpost.prop = log.like(Bprop,X.wint, Y)+log.prior(Bprop,priorBmean,pBinvcovariance)
  log.R = lpost.prop-lpost.cur
  if(log(runif(1))<log.R){
    samples[(i+1),] = Bprop
  } else{samples[(i+1),] = samples[i,]}
}

library(coda)
burnin=1000
samp.mcmc = as.mcmc(samples[-(1:burnin),])
traceplot(samp.mcmc)
?traceplot
1-rejectionRate(samp.mcmc)
acf(samp.mcmc[,2])
effectiveSize(samp.mcmc)



#Is the prior informative? (does it influence the position density)? 
# No, hyper parameters not based on data.
#
#Give a 95% confidence interval for the coefficients of 
# find standard deviations of each coefficient.  Multiply by 2
#
#Do you believe weight is related to odds of fracture given age prior, etc
# Does the coefficent deviate from 0.  Contribute positively to the predicted value
#
#Find the posterior density of the relative risk of fracture for a 65 y.o. 
#woman w/o a prior fracture not premoenopausal, weighing 70 kg self assesed low risk
#lpost.cur = log.like(samples[i,],X.wint, Y)+log.prior(,priorBmean,pBinvcovariance)




#P(Fracture)=exp(x*beta)/(1+exp(x*Beta))
lowRisk= c(1,0, 65, 70, 0, 0,0)
postProbLow= exp(samp.mcmc%*%lowRisk)/(1+exp(samp.mcmc%*%lowRisk))
highRisk= c(1,0, 65, 70, 0, 0,1)
postProbHigh= exp(samp.mcmc%*%highRisk)/(1+exp(samp.mcmc%*%highRisk))
relativeRisk= postProbLow-postProbHigh
plot(density(relativeRisk))
mean(relativeRisk)
quantile(relativeRisk,c(0.025,.975))
quantile(samp.mcmc[,4], c(0,.025,.975))
summary(m1)
