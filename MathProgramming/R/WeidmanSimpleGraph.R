x=seq( from= -2 , to=2 , by=0.1 ) #Specifyvectorofxvalues.
y=x^2	#Specifycorrespondingyvalues.
plot( x , y , type="l" )	#Makea graphofthex,ypoints.
dev.copy2pdf( file="SimpleGraph.pdf") #Savetheplot to anEPSfile.

#saveGraph(file = "", type= "png")


#plot(density(rnorm(10000)), col= "red")