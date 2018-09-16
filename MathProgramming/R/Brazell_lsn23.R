
nhefs<-read.csv("nhefs.csv")
attach(nhefs)
outcomeModel<-glm(death~qsmk+sex+age+race+years.of.smoking,
data=nhefs,family=binomial(link = "logit"))
summary(outcomeModel)
new.dat=c(1,1,1,29,1,8)
outcomeModel$coef%*%new.dat
# prob of death of certain person w specific characteristics
exp(outcomeModel$coef%*%new.dat)/(1+exp(outcomeModel$coef%*%new.dat))
#library(rstan)
nhefs.script="
data{
  int<lower=0> N;//number of observations
  int<lower=0>qsmk[N];
  int<lower=0>sex[N];
  int<lower=0>age[N];
  int<lower=0>race[N];
  int<lower=0>yearsOfSmoking[N];
  int<lower=0, upper=1>death[N];
  int<lower=0>p;
}
parameters{
  real beta[p];
}
model{
  for (i in 1:N){
    death[i]~bernoulli_logit(beta[1]+beta[2]*qsmk[i]+beta[3]*sex[i]+beta[4]*age[i]+beta[5]*race[i]+beta[6]*yearsOfSmoking[i]);
  }
}"
nhefsDSO= stan_model(model_code=nhefs.script)

dat= list(N= nrow(nhefs), death=death, qsmk=qsmk, sex= sex,age=age, race=race, yearsOfSmoking=years.of.smoking,  p=6)

nhefsPos= sampling(object=nhefsDSO, data=dat, chains=3, iter=1000)
traceplot(nhefsPos)

#yi|x ~bern(p)//where 
#p = exp(B0+B1X1+B2X2...)/1+exp(B0+B1X1...)
#write a function that takes an x and a B and returns a log likelihood where likelood is Bern(p)