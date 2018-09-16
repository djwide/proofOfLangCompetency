x=seq( from= -3 , to=3, by=0.1 ) #Specifyvectorofxvalues.
y=x^3	#Specifycorrespondingyvalues.
plot( x , y , type="l" )	#Makea graphofthex,ypoints.
dev.copy2pdf( file="SimpleGraph2.pdf") #Savetheplot to anEPSfile.
