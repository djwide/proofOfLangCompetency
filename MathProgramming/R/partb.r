detach(wage)
setwd("~/Bayes/Project Plus")
wage = read.csv("wage_data.csv")
head(wage)
attach(wage)

stop.pop = stops/pop*1000
stop.pa = stops/past.arrests

#Based on population
plot(0:40,dgamma(0:40,9,0.5), type = "l")
stops.w = stop.pop[eth==3]
stops.h = stop.pop[eth==2]
stops.b = stop.pop[eth==1]
sumW = sum(stops.w)
sumH = sum(stops.h)
sumB = sum(stops.b)
sequence = seq(0,100,length=1000)
plot(sequence,dgamma(sequence,9+sumB, length(stops.b)+0.5), type = "l")
lines(sequence,dgamma(sequence,9+sumW, length(stops.w)+0.5), type = "l", col="blue")
lines(sequence,dgamma(sequence,9+sumH, length(stops.h)+0.5), type = "l", col="red")


#Based on past arrested instaed of population
stops.wpa = stop.pa[eth==3]
stops.hpa = stop.pa[eth==2]
stops.bpa = stop.pa[eth==1]
sumWpa = sum(stops.wpa)
sumHpa = sum(stops.hpa)
sumBpa = sum(stops.bpa)
sequence2 = seq(0,2,length=1000)
plot(sequence2,dgamma(sequence2,9+sumBpa, length(stops.bpa)+0.5), type = "l")
lines(sequence2,dgamma(sequence2,9+sumWpa, length(stops.wpa)+0.5), type = "l", col="blue")
lines(sequence2,dgamma(sequence2,9+sumHpa, length(stops.hpa)+0.5), type = "l", col="red")

qgamma(.975,(9+sum(stops.wpa)), (length(stops.bpa)+.5))
qgamma(.025,(9+sum(stops.bpa)), (length(stops.bpa)+.5))
qgamma(.025,(9+sum(stops.hpa)), (length(stops.bpa)+.5))

eth= factor(eth, levels=c(3,1,2))
poisMod= glm(stops~eth, family= poisson, offset= log(past.arrests))
library(arm)
post= sim(poisMod, n.sims= 10000)
names(post)
postDist= coef(post)
head(postDist)
exp(colMeans(postDist)[2])
quantile(exp(postDist[,2]),c(0.025, .975))
quantile(exp(postDist[,3]),c(0.025, .975))
#use glm, poisson and sim command in arm package 
pois.mod1= glm(stops~eth+precinct, family=poisson, offset= log(past.arrests))
post2= sim(pois.mod1, n.sims=1000)
post.dist2= coef(post2)
dim(post.dist2)
head(post.dist2[,1:3])
exp(colMeans(post.dist2)[2])
quantile(exp(post.dist2[,2]),c(0.025, .975))
quantile(exp(post.dist2[,3]),c(0.025, .975))

qpois.mod= glm(stops~eth+factor(precinct),family= quasipoisson, offset= log(past.arrests))
summary(qpois.mod)

library(lme4)

mem1= glmer(stops~factor(eth)+(1|precinct), family= poisson, offset= log(past.arrests))
summary(mem1)
coef(mem1)
post= sim(mem1, n.sims= 10000)
colMeans(coef(post)$fixef)
colMeans(coef(post)$ranef$precinct)

ratio= exp(coef(post)$fixef[,2]-coef(post)$fixef[,3])
quantile(ratio,c(0.025, .975))
plot(mem1)
