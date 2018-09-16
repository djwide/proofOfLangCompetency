#Create data
Recovery = cbind(rbinom(50,1,.8), c(rbinom(40,1,.6),rep(NA,10)), c(rbinom(30,1,.65),rep(NA,20)),rbinom(50,1,.40), c(rbinom(30,1,.85),rep(NA,20)))
colnames(Recovery) = c("Doc1", "Doc2", "Doc3", "Doc4", "Doc5")
write.csv(Recovery, "motion.csv", row.names = FALSE)

set.seed(14)
Y=read.csv("motion.csv")
head(Y)

#let's create vectors of yj's and nj's to simplify calculating the posterior
yj = apply(Y,2, function(x) sum(x,na.rm=TRUE))
nj= apply(Y,2, function(x) length(x[!is.na(x)]))

Aw = 14.5
Bw = 5.5
alpha = 0.01
beta = 0.01

#posterior
post = function(y,n,theta, omega,kap2,Aw, Bw, alpha, beta)
{
	if(any(theta<0) | any(theta>1) | any(omega<0) | any(omega>1) | any(kap2<0)){
		return(-1)
	} else{
    return(prod(theta^(y+omega*kap2)*(1-theta)^(n-y+(1-omega)*kap2)
      /beta((omega*kap2+1),((1-omega)*kap2+1)))
    *omega^(Aw-1)*(1-omega)^(Bw-1)*kap2^(alpha-1)*exp(-beta*kap2))
			}
}		

niter = 10000
post.samp = list(theta = matrix(NA,nrow = niter, ncol = length(yj)), omega = vector(length = niter), kappa2 = vector(length = niter))

post.samp$theta[1,] = yj/nj
post.samp$omega[1] = 0.5
post.samp$kappa2[1] = 5

library(MASS)
for(j in 1:(niter-1)){ 
	#let's update one at a time - start with theta
    prop.theta = post.samp$theta[j,]+ mvrnorm(1,rep(0,length(yj)),diag((1/20)^2, nrow = 				length(yj))) #the proposed move
    #I think the previous line is where we stopped in class
    
    R=post(yj,nj, prop.theta[j], post.samp$omega, post.samp$kappa2,Aw, Bw, alpha, beta)/post(yj,nj, post.samp$theta[j], post.samp$omega, post.samp$kappa2,Aw, Bw, alpha, beta)
      #theta over the current theta
      #both numerator and denominator should be evaluated at
      #current values of omega and kap2
      
    #if theta is outside (0,1) - reject
    if(R<0){
    	post.samp$theta[j+1,]=post.samp$theta[j,]
    } else if(runif(1)<R){ #if U(0,1) less that the ratio, accept
    	post.samp$theta[j+1,] = prop.theta
    	} else{ #if not, reject
    		post.samp$theta[j+1,] = post.samp$theta[j,]
    		}

   		#now update omega - it's got to be between 0 and 1 as well
    prop.omega = post.samp$omega[j]+ rnorm(1,0,(1/4)^2) #the proposed move
    R=post(yj,nj, post.samp$theta[j], prop.omega, post.samp$kappa2,Aw, Bw, alpha, beta)/post(yj,nj, post.samp$theta[j], post.samp$omega, post.samp$kappa2,Aw, Bw, alpha, beta)####ratio of posterior at proposed omega over current omega
    #ensure that you use the updated value of theta from the previous step
    
    #if outside (0,1) - reject
    if(R<0){####
      post.samp$omega[j+1,]=post.samp$omega[j,]
    } else if(runif(1)<R){ #if U(0,1) less that the ratio, accept
      post.samp$omega[j+1,] = prop.omega
    } else{ #if not, reject
      post.samp$omega[j+1,] = post.samp$omega[j,]
    }
    		
   		#now update kappa2 - it's got to be greater than 0
    prop.kappa2 = post.samp$kappa[j]+ rnorm(1,0,8) #the proposed move
    R= R=post(yj,nj, post.samp$theta[j], post.samp$omega, prop.kappa2,Aw, Bw, alpha, beta)/post(yj,nj, post.samp$theta[j], post.samp$omega, post.samp$kappa2,Aw, Bw, alpha, beta)#ratio of posteriors
    #if outside (0,1) - reject
      if(R<0){####
        post.samp$kappa2[j+1,]=post.samp$kappa2[j,]
      } else if(runif(1)<R){ #if U(0,1) less that the ratio, accept
        post.samp$kappa2[j+1,] = prop.kappa2
      } else{ #if not, reject
        post.samp$kappa2[j+1,] = post.samp$kappa2[j,]
      }

 }#j

#some diagnostics to consider
library(coda) 
theta.samp = as.mcmc(post.samp$theta)
1-rejectionRate(theta.samp)
omega.samp = as.mcmc(post.samp$omega)
1-rejectionRate(omega.samp)
kappa.samp = as.mcmc(post.samp$kappa2)
1-rejectionRate(kappa.samp)
#plot(kappa.samp)
#plot(omega.samp)
#plot(theta.samp)

