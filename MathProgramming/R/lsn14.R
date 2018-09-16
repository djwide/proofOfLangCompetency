Y=read.csv("motion.csv")
head(Y)

yj=apply(Y,2,function(x) sum(x,na.rm=TRUE))
nj= apply(Y, 2, function(x) length(x[!is.na(x)]))

Aw=14.5
Bw= 5.5
alpha= .01
beta= .01
niter=1000


post= function(Aw,w,alpha, beta, n, kap2, omega, theta, y){
  if(kap2<0 |omege<0|omega>1|any(theta<0)|any(theta>1)){
    return(-1)
  }
  else{
    return(prod(theta^(y+omega*kap2)*(1-theta)^(n-y+(1-omega)*kap2)/beta(omega*kap2+1,
    (omega-1)*kap2+1))*omega^(Aw-1)*(1-omega)^(Bw-1)*kap2^(alpha-1)*exp(-beta*kap2))
  }
}

post.samp= list(theta=matrix(NA,nrow=niter, ncol=length(yj)),
                omega= vector(length= niter), kappa2= vector(length=niter))

post.samp$theta[1,]=yj/nj
post.samp$omega[1]= mean(yj)
post.samp$kappa2[1]=5

library(MASS)

for(j in 1:(niter-1)){
  prop.theta= post.sample$theta[j,]+mvnorm(1,rep(0,length(yj)), diag(1/100,nrow=length(yj)))
  R= post(Aw,Bw,alpha, beta, nj,post.samp$kappa2[j],post.samp$omega[j],prop.theta,yj)/
    post(Aw,Bw,alpha, beta, nj,post.samp$kappa2[j],post.samp$omega[j],post.samp$theta,yj)
  
}
