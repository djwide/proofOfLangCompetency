#The educational testing service performed a study to
#analyze the effects of special coaching programs on 
#test scores.  They performed separate randomized 
#experiments for the SAT-Verbal in eight schools.
#The outcome was the test score
#There was no a priori reason to believe that any 
#of the eight programs was more effective than any other.
#We have the estimated treament effect and variance for 
#each school - y and sigma, respectively.
#The estimates have approximately normal sampling 
#distributions and all schools had relatively large 
#sample sizes.




#install.packages("rstan", dependencies = TRUE)
library(rstan)
modelString= "
  data{
    int<lower=0>N;
    real y[N];
    real<lower=0> sigma[N];
    
  }
  parameters{
    real mu;
    real<lower=0>tau;
    real theta[N];
  }
  model{
    theta~ normal(mu, tau);
    y~ normal(theta,theta);
  }
"
standDso= stan_model(model_code=modelString)

school_dat = list(J=8,y=c(28,8,-3,7,-1,1,18,12), sigma = c(15,10,16,11,9,11,10,18))

schoolPost1= sampling(object=stanDso, data= dataList, chains=4, iter=1000, warmup=200, thin=1)

source("DBDA2E-utilities.R")

mcmcCoda= mcmc.list(lapply(1:ncol(stanFit), function(x){mcmc(as.array(stanFit)[,x,])}))
diagMCMC(mcmcCoda, parName=c("theta"))

print(schoolPost1)
plot(schoolPost1, pars=c("mu"))
pairs(schoolPost1, pars= c("mu"))

