library(lme4)
library(arm) 
setwd("~/Bayes/Project Plus")
#?lmer
#?glmer
dat = read.csv("wage_dataB.csv")
head(dat)
attach(dat)
m1=glm(empstat~1,family=poisson)#,offset = log(age))

summary(m1) 
m1

head(age)
#?glm which(stops>past.arrests)

collapsed.data = data.frame(aggregate(cbind(empstat, age)~racecom+marst,data=dat, FUN=sum),aggregate(citizen~racecom+marst,data=dat,FUN=max))
collapsed.data = collapsed.data[,-c(5,6)] 
attach(collapsed.data)
m1=glmer(stops~factor(eth)+(eth|precinct),family=poisson,offset = log(past.arrests), subset=past.arrests>0, data=collapsed.data)
coef(m1) 
post = sim(m1)

#start simple poisson model here 
stops.1000 = stops/pop*1000 
range(stops.1000)
plot(0:40,dgamma(0:40,9,rate = 0.5),type = "l") 
stops.b = stops.1000[eth == 1]
stops.h =stops.1000[eth == 2]
stops.w = stops.1000[eth == 3] 
sum(stops.b)
#lambda_b~gamma(5698.7,300.5)
plot(seq(0,22,length=1000),dgamma(seq(0,22,length=1000),5698.7,rate = 300.5),type = "l")
sum(stops.h)
sum(stops.w)
lines(seq(0,22,length=1000),dgamma(seq(0,22,length=1000),sum(stops.h)+6,300.5)/2,type = "l", col="red")
lines(seq(0,22,length=1000),dgamma(seq(0,22,length=1000),sum(stops.w)+6,300.5)/3,type = "l", col="blue")


stops.arrest = stops/past.arrests
#which(stops.arrest==Inf)
#stops.arrest = stops.arrest[stops.arrest<Inf]



#new prior - very diffuse - alpha = 1, beta = 0.1)
plot(0:30,dgamma(0:30,1,rate = 0.1),type = "l") 
qgamma(0.95,1,0.1)
stops.b = stops.arrest[eth == 1& past.arrests!=0]
stops.h =stops.arrest[eth == 2& past.arrests!=0]
stops.w = stops.arrest[eth == 3& past.arrests!=0]
sum(stops.b)
#lambda_b~gamma(5698.7,300.5)
plot(seq(0,1,length=1000),dgamma(seq(0,1,length=1000),sum(stops.b)+1,300.1),type = "l")
sum(stops.h)
sum(stops.w)
lines(seq(0,1,length=1000),dgamma(seq(0,1,length=1000),sum(stops.h)+1,300.1)/1.5,type = "l", col="red")
lines(seq(0,1,length=1000),dgamma(seq(0,1,length=1000),sum(stops.w)+1,299.1)/1.5,type = "l", col="blue")
#do 95% CI overlap? 
qgamma(0.025,sum(stops.h)+1,300.1)
qgamma(0.975,sum(stops.w)+1,300.1)
#yes - what about blacks and whites
qgamma(0.025,sum(stops.b)+1,300.1)
qgamma(0.975,sum(stops.w)+1,300.1)
#yes - again

#another way to look at this - poisson regression

pois.mod = glm(stops~factor(eth),family=poisson,offset = log(past.arrests), subset=past.arrests>0)
post = sim(pois.mod,n.sims = 10000)
temp = coef(post)
head(temp)
colMeans(temp)
#but I'd rather compare to white - make this the reference level
eth = factor(eth, levels = c(3,2,1))

pois.mod = glm(stops~factor(eth),family=poisson,offset = log(past.arrests), subset=past.arrests>0)
post = sim(pois.mod,n.sims = 10000)
temp = coef(post)

colMeans(temp)
quantile(temp[,2],c(.025,.975))
quantile(temp[,3],c(.025,.975))

#don't include 0

qpois.mod = glm(stops~factor(eth),family=quasipoisson,offset = log(past.arrests), subset=past.arrests>0)
summary(qpois.mod)
##whooaaaa - holy cow; y fitting a poisson regression model
#we are assuming that
#the variance and mean are equal - i.e. dispersion parameter = 1
#but our estimate from the data is 311!!!
#our model is probably not adequate

#Random intercept model

#draw from posterior
post = sim(mem1,n.sims = 10000)
colMeans(coef(post)$fixef)
colMeans(coef(post)$ranef$precinct)
#Random slope and intercept
mem2 = glmer(stops~factor(eth)+(eth|precinct),family=poisson,offset = log(past.arrests), subset=past.arrests>0)
post2 = sim(mem2,n.sims = 10000)
colMeans(coef(post2)$fixef)
colMeans(coef(post2)$ranef$precinct)
#random slope model
mem3 = glmer(stops~factor(eth)+(eth-1|precinct),family=poisson,offset = log(past.arrests), subset=past.arrests>0) 
post3 = sim(mem3,n.sims = 10000)
colMeans(coef(post3)$fixef)
colMeans(coef(post3)$ranef$precinct)
write.csv(collapsed.data,"police_stop_small.csv")
