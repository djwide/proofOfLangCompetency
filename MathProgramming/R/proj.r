#Part A
#1
setwd("~/Bayes/Project Plus")
dat= read.csv("wage_data.csv")
attach(dat)
library(MASS)
library(coda)
library(lme4)
library(arm)
#head(dat)

#dat$empstat=as.factor(dat$empstat)
dat$sex=as.factor(dat$sex)
dat$racecom=as.factor(dat$racecom)
dat$marst=as.factor(dat$marst)
dat$citizen=as.factor(dat$citizen)
dat$speakeng1=as.factor(dat$speakeng1)
dat$educ1=as.factor(dat$educ1)
dat$schltype=as.factor(dat$schltype)
dat$degfield=as.factor(dat$degfield)
dat$migrate1=as.factor(dat$migrate1)
dat$diffrem=as.factor(dat$diffrem)
dat$diffphys=as.factor(dat$diffphys)
dat$diffsens=as.factor(dat$diffsens)
#table(empstat, degfield)

x.wint=model.matrix(empstat~.,dat)
head(x.wint)
Y= dat$empstat
X= x.wint[,-1]
#m2 = glm(Y~dat$degfield, family = binomial)
#summary(m1)
#table(empstat,degfield)
#justify prior
priorBmean=rep(0,dim(x.wint)[2])
pBvariance= (log(15)/2)^2
pBcovariance= diag(pBvariance, length(priorBmean))
pBinvcovariance= solve(pBcovariance)

b = vector(mode="numeric", length=length(priorBmean))

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

#test functions to ensure they work
log.like(b,x.wint,Y)
log.prior(b,priorBmean,pBinvcovariance)

#specify the number of posterior sample to take
#niter = 5000
#create a matrix to store post samples
samples = matrix(NA,nrow = niter, ncol = length(b))
samples[1,]=b
colnames(samples) = c("Intercept", colnames(X))
#binomial?
m1 = glm(Y~as.matrix(X), family = binomial)
summary(m1)

'''
for (i in 1:(niter-1)){
  #calc log posterior at current values
  lpost.cur = log.like(samples[i,],x.wint, Y)+log.prior(samples[i,],priorBmean,pBinvcovariance)
  Bprop = samples[i,] + mvrnorm(1,rep(0,length(b)),.1*summary(m1)$cov.unscaled)
  lpost.prop = log.like(Bprop,x.wint,Y) + log.prior(Bprop,priorBmean,pBinvcovariance)
  log.R = lpost.prop - lpost.cur
  if (log(runif(1))<log.R){
    samples[(i+1),] = Bprop
  } 
  else{
    samples[(i+1),] = samples[i,]
  }
}

burnin = 1000
samples = samples[-(1:burnin),]
samp.mcmc = as.mcmc(samples)
traceplot(samp.mcmc)
effectiveSize(samp.mcmc)
densplot(samp.mcmc)
'''

#Part 2
#choose mode for typical values
x25=coef(m1)%*%c(1,9,1,1,25,0,0,0,0,0,0,0,0,0,0,0,39,41,0,0,0,1,1,1,1,0,0,0,1,0)
x35=coef(m1)%*%c(1,9,1,1,35,0,0,0,0,0,0,0,0,0,0,0,39,41,0,0,0,1,1,1,1,0,0,0,1,0)
x45=coef(m1)%*%c(1,9,1,1,45,0,0,0,0,0,0,0,0,0,0,0,39,41,0,0,0,1,1,1,1,0,0,0,1,0)
x55=coef(m1)%*%c(1,9,1,1,55,0,0,0,0,0,0,0,0,0,0,0,39,41,0,0,0,1,1,1,1,0,0,0,1,0)
x65=coef(m1)%*%c(1,9,1,1,65,0,0,0,0,0,0,0,0,0,0,0,39,41,0,0,0,1,1,1,1,0,0,0,1,0)

exp(x25)/(1+exp(x25))
exp(x35)/(1+exp(x35))
exp(x45)/(1+exp(x45))
exp(x55)/(1+exp(x55))
exp(x65)/(1+exp(x65))
exp(x25)/(1+exp(x25))-exp(x35)/(1+exp(x35))
exp(x35)/(1+exp(x35))-exp(x45)/(1+exp(x45))
exp(x45)/(1+exp(x45))-exp(x55)/(1+exp(x55))
exp(x55)/(1+exp(x55))-exp(x65)/(1+exp(x65))


#quantile from bayesian posterior for variaable

#Part B
dat2= read.csv("wage_dataB.csv")
attach(dat2)
#head(dat)

dat2$marst=as.factor(dat2$marst)
dat2$race=as.factor(dat2$race)
dat2$hispan=as.factor(dat2$hispan)
dat2$citizen=as.factor(dat2$citizen)
dat2$speakeng1=as.factor(dat2$speakeng1)
dat2$educ1=as.factor(dat2$educ1)
dat2$degfield=as.factor(dat2$degfield)
dat2$occ2010=as.factor(dat2$occ2010)
dat2$pwmetro=as.factor(dat2$pwmetro)
dat2$ind1990=as.factor(dat2$ind1990)
dat2$sex=as.factor(dat2$sex)

mem1 = glmer(incwage~nchild +age+marst+race+hispan+citizen+uhrswork+(1|sex)+(sex|degfield)+(sex|occ2010)+(1|speakeng1)+(1|educ1)+(1|bpl)+(1|classwkrd)+(1|pwmetro)+(1|ind1990)+(1|year))
#mem1 = glmer(incwage~nchild +age+marst+race+hispan+citizen+uhrswork+(1|sex)+(1|degfield)+(1|occ2010)+(1|speakeng1)+(1|educ1)+(1|bpl)+(1|pwmetro)+(1|ind1990)+(1|year))
#mem1 = glmer(incwage~marst+(1|sex)+(1|degfield)+(1|occ2010))
post = sim(mem1,n.sims = 10000)
temp = coef(post)
summary(post)
coef(post)[1]
colMeans(temp)
quantile(temp[,2],c(.025,.975))
quantile(temp[,3],c(.025,.975))
