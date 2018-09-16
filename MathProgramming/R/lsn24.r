#yi|x ~bern(p)//where 
#p = exp(B0+B1X1+B2X2...)/1+exp(B0+B1X1...)
#write a function that takes an x and a B and returns a log likelihood where likelood is Bern(p)

logLikeli= function(X,Y,B){
  ll= sum(Y*(X%*%B- log(1+exp(X%*%B))+(1-y)*(-log(1+exp(X%*%B)))))
  return(ll)
}

x=cbind(1,c(2,3,1,1,4,5), c(1,2,3,4,5,6))
y=c(1,0,0,1,1,1)
b=c(0,0,0)
logLikeli(x, y, b)

logPrior= function(beta, mu, sigma.inv){
  #logP= sum(beta-mu)^2/((2*sigma.in)^2) #requires prior independence
  logP= -1/2*(beta-mu)%*%sigma.inv%*%(beta-mu)
  return(logP)
}
#Beta MVN(mu, sigma)
#Betai~N(mu, sigmasquared)
#
#
#
dat= read.csv("nhefs.csv")
head(dat)
Y= dat$death
X= dat[,c("qsmk", "sex","age", "race", "years.of.smoking")]
x.wint=as.matrix(cbind(1,X))

priorBmean=rep(0,dim(x.wint)[2])
pBvariance= (log(15)/2)^2#weakly informative prior
pBcovariance= diag(pBvariance, length(priorBmean))
pBincovariance= solve(pBcovariance)



#test funtions
#logLikeli(x.wint,Y, priorBmean)
#logPrior(b, priorBmean, pBincovariance)


niter= 10000
#create a matrix to store posterior samples
samples= matrix(NA, nrow= niter, ncol= length(b))
samples[1,]= b

for(i in 1:niter){
  #post at current val
  print(x.wint)
  print(samples[i,])
  lpost.cur= logLikeli(x.wint, Y, samples[i,])+ logPrior(samples[,i],priorBmean, pBincovariance)
  #propose move
  Bprop= mvrnorm(1,B,diag(1,length(B)))
  #posterior at proposed val
  lpost.prop= logLikeli(x.wint, Y, Bprop)+ logPrior(Bprop,priorBmean, pBincovariance)
  #accept/reject proposed val
  if(log(runif(1))<lpost.prop/lpost.prior)
  {
    sampless[i,]=Bprop
  } 
  else
  {
    samples[i,]= samples[i-1,]
  }
}



