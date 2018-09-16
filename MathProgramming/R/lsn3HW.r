#4.1

show(HairEyeColor)
EyeHairFreq=apply(HairEyeColor,c("Eye", "Hair"), sum)
EyeHairProp= EyeHairFreq/sum(EyeHairFreq)
show(round(EyeHairProp , 2))
#makes everything a proportion
HairFreq= apply(HairEyeColor, c("Hair"), sum)
HairProp= HairFreq/ sum(HairFreq)
show(round(HairProp , 2))
#gives proportions given each hair color
EyeFreq= apply(HairEyeColor, c("Eye"), sum)
EyeProp= EyeFreq/ sum(EyeFreq)
show(round(EyeProp , 2))
#gives proportions given eye color
EyeHairProp["Blue",]/EyeProp["Blue"]
# shows didtributions of blues given blue

#4.4
#a
meanval = 0.0             # Specify mean of distribution.
xlow  = 0 # Specify low end of x-axis.
xhigh = 1 # Specify high end of x-axis.
dx = 0.02                 # Specify interval width on x-axis
# Specify comb points along the x axis:
x = seq( from = xlow , to = xhigh , by = dx )
# Compute y values, i.e., probability density at each value of x:
y = 6*x-6*x^2
# Plot the function. "plot" draws the intervals. "lines" draws the bell curve.
plot( x , y , type="h" , lwd=1 , cex.axis=1.5
      , xlab="x" , ylab="p(x)" , cex.lab=1.5
      , main="Probability Density" , cex.main=1.5 )
lines( x , y )
# Approximate the integral as the sum of width * height for each interval.
area = sum( dx * y )

#b
# int(f,0,1)=1
#c yes

#d
#x=3, y=1.5

#4.5
#a
# Graph of normal probability density function, with comb of intervals.
meanval = 0.0             # Specify mean of distribution.
sdval = 0.2               # Specify standard deviation of distribution.
xlow  = meanval - sdval # Specify low end of x-axis.
xhigh = meanval + sdval # Specify high end of x-axis.
dx = 0.02                 # Specify interval width on x-axis
# Specify comb points along the x axis:
x = seq( from = xlow , to = xhigh , by = dx )
# Compute y values, i.e., probability density at each value of x:
y = ( 1/(sdval*sqrt(2*pi)) ) * exp( -.5 * ((x-meanval)/sdval)^2 )
# Plot the function. "plot" draws the intervals. "lines" draws the bell curve.
plot( x , y , type="h" , lwd=1 , cex.axis=1.5
      , xlab="x" , ylab="p(x)" , cex.lab=1.5
      , main="Normal Probability Density" , cex.main=1.5 )
lines( x , y )
# Approximate the integral as the sum of width * height for each interval.
area = sum( dx * y )
print(area+ " = prob mass")

#b
# sigma= about 15
# mu= 162
