
n = 2525

Y = rnorm(n,23,4) #get data, number of observations, mean, std deviation
X = rinvchisq(n-1,16)

Yvec = vector(length = n)
Xvec = vector(length = n)

for(i in 1:n){
  ysamp = sample(Y, 1, replace = FALSE, prob = NULL)
  xsamp = sample(X, 1, replace = FALSE, prob = NULL)
  
  Y = rnorm(n,23,xsamp) 
  X = rinvchisq(n-1,ysamp)
  Yvec[i]=xsamp
  Xvec[i]=ysamp
}
Yvec
plot(density(Y))
plot(density(X))
install.packages("geoR")
