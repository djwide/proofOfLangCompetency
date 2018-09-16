setwd("~/MA488/project")
police = read.csv("police_stop_small.csv")
head(police)
police = police[,-1]
attach(police)

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

qgamma(.975,(9+sum(stopsW)), (length(stopsB)+.5))
qgamma(.025,(9+sum(stopsB)), (length(stopsB)+.5))
qgamma(.025,(9+sum(stopsH)), (length(stopsB)+.5))

eth= factor(eth, levels=c(3,1,2))
poisMod= glm(stops~eth, family= poisson, offset= log(past.arrest))
library(arm)
post= sim(poisMod, nSims= 10000)
names(post)
head(post.dist)
colMeans(postDist)
#use glm, poisson and sim command in arm package 
