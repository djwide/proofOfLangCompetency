#Graphofnormal probabilitydensityfunction, withcombof intervals.
meanval=0.0	#Specifymeanofdistribution.
sdval=0.2	#Specifystandarddeviationofdistribution.
xlow =meanval - 3*sdval #Specify lowendofx-axis.
xhigh=meanval +3*sdval #Specifyhighendofx-axis.
dx=0.02	#Specify interval widthonx-axis
#Specifycombpoints along thexaxis:
x=seq( from=xlow , to=xhigh , by=dx )
#Computeyvalues, i.e., probabilitydensityateachvalueofx:
y= ( 1/(sdval*sqrt(2*pi)) ) * -.5* ((x-meanval)/sdval)^2
#Plot thefunction. "plot" draws the intervals. "lines" draws thebell curve.
plot( x , y , type="h" , lwd=1 , cex.axis=1.5, xlab="x" , ylab="p(x)" , cex.lab=1.5, main="Normal ProbabilityDensity" , cex.main=1.5 )
lines( x , y )
#Approximatethe integral as thesumofwidth*heightforeach interval.
area=sum( dx*y )
#Display info in thegraph.
text( -sdval , .9*max(y) , bquote( paste(mu ,"=" ,.(meanval)) )
, adj=c(1,.5) )
text( -sdval , .8*max(y) , bquote( paste(sigma ,"= " ,.(sdval)) )
, adj=c(1,.5) )