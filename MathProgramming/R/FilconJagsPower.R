graphics.off()
rm(list=ls(all=TRUE))
source("openGraphSaveGraph.R")
require(rjags)         # Kruschke, J. K. (2011). Doing Bayesian Data Analysis:
                       # A Tutorial with R and BUGS. Academic Press / Elsevier.

GoalAchievedForSample = function( dataList , plotResults=F ,
                                  fileNameRoot="DeleteMe" ) {

#------------------------------------------------------------------------------
# THE MODEL.

modelstring = "
model {
   for ( subjIdx in 1:nSubj ) {
      # Likelihood:
      z[subjIdx] ~ dbin( theta[subjIdx] , N[subjIdx] )
      # Prior on theta: Notice nested indexing.
      theta[subjIdx] ~ dbeta( a[cond[subjIdx]] , b[cond[subjIdx]] )T(0.001,0.999)
   }
   for ( condIdx in 1:nCond ) {
      a[condIdx] <- mu[condIdx] * kappa[condIdx]
      b[condIdx] <- (1-mu[condIdx]) * kappa[condIdx]
      # Hyperprior on mu and kappa:
      mu[condIdx] ~ dbeta( Amu , Bmu )
      kappa[condIdx] ~ dgamma( Skappa , Rkappa )
   }
   # Constants for hyperprior:
   Amu <- 1
   Bmu <- 1
   Skappa <- pow(meanGamma,2)/pow(sdGamma,2)
   Rkappa <- meanGamma/pow(sdGamma,2)
   meanGamma <- 10
   sdGamma <- 10
}
" # close quote for modelstring
writeLines(modelstring,con="model.txt") # Write model to a file.

#------------------------------------------------------------------------------
# THE DATA.

# dataList is supplied from outside the function.

#------------------------------------------------------------------------------
# INTIALIZE THE CHAINS.

sqzData = .01+.98*dataList$z/dataList$N
mu = aggregate( sqzData , list(dataList$cond) , mean )[,"x"]
sd = aggregate( sqzData , list(dataList$cond) , sd )[,"x"]
kappa = mu*(1-mu)/sd^2 - 1
initsList = list( theta = sqzData , mu = mu , kappa = kappa )

#------------------------------------------------------------------------------
# RUN THE CHAINS.

parameters = c("mu","kappa","theta","a","b")  # The parameter(s) to be monitored.
adaptSteps = 500        # Number of steps to "tune" the samplers.
burnInSteps = 1000      # Number of steps to "burn-in" the samplers.
nChains = 3             # Number of chains to run.
numSavedSteps=5000     # Total number of steps in chains to save.
thinSteps=1             # Number of steps to "thin" (1=keep every step).
nPerChain = ceiling( ( numSavedSteps * thinSteps ) / nChains ) # Steps per chain.
# Create, initialize, and adapt the model:
jagsModel = jags.model( "model.txt" , data=dataList , inits=initsList , 
                        n.chains=nChains , n.adapt=adaptSteps )
# Burn-in:
cat( "Burning in the MCMC chain...\n" )
update( jagsModel , n.iter=burnInSteps )
# The saved MCMC chain:
cat( "Sampling final MCMC chain...\n" )
codaSamples = coda.samples( jagsModel , variable.names=parameters , 
                            n.iter=nPerChain , thin=thinSteps )
# resulting codaSamples object has these indices: 
#   codaSamples[[ chainIdx ]][ stepIdx , paramIdx ]

#------------------------------------------------------------------------------
# EXAMINE THE RESULTS.

# Convert coda-object codaSamples to matrix object for easier handling.
# But note that this concatenates the different chains into one long chain.
# Result is mcmcChain[ stepIdx , paramIdx ]
mcmcChain = as.matrix( codaSamples )

# Extract parameter values.
mu = NULL
kappa = NULL
for ( condIdx in 1:nCond ) {
   mu = rbind( mu , mcmcChain[, paste("mu[",condIdx,"]",sep="") ] )
   kappa = rbind( kappa , mcmcChain[, paste("kappa[",condIdx,"]",sep="") ] )
}
chainLength = NCOL(mu)

    
    
# Display results if desired:
if ( plotResults ) {
  # Histograms of condition (i.e. group) mu differences:
  openGraph(12,4)
  layout( matrix(1:3,nrow=1) )
  source("plotPost.R")
  histInfo = plotPost( mu[1,]-mu[2,] , xlab=expression(mu[1]-mu[2]) ,
                       compVal=0.0 , breaks=30 , main="" )
  histInfo = plotPost( mu[3,]-mu[4,] , xlab=expression(mu[3]-mu[4]) ,
                       breaks=30 , main="" )
  HDIlim = HDIofMCMC( mu[3,]-mu[4,] )
  text( mean(HDIlim) , .25*max(histInfo$density) , adj=c(.5,0) , cex=1.25 ,
        bquote( "HDI width = " * .(signif(HDIlim[2]-HDIlim[1],3)) ) )
  nSubjPerCond = round( dataList$nSubj / dataList$nCond )
  histInfo = plotPost( (mu[1,]+mu[2,])/2 - (mu[3,]+mu[4,])/2 , compVal=0.0 ,
                       xlab=expression((mu[1]+mu[2])/2 - (mu[3]+mu[4])/2) ,
                       breaks=30 , main="" )
  saveGraph( file = paste( fileNameRoot,"N",nSubjPerCond,"_",expIdx,".eps" ,
                              sep="" ) , type="eps" )
  # Scatterplot of mu, kappa:
  openGraph()
  muLim = c(.60,1) ; kappaLim = c( 2.0 , 50 ) ; mainLab="Posterior"
  thindex = round( seq( 1 , chainLength , len=300 ) )
  plot( mu[1,thindex] , kappa[1,thindex] , main=mainLab ,
      xlab=expression(mu[c]) , ylab=expression(kappa[c]) , cex.lab=1.75 ,
      xlim=muLim , ylim=kappaLim , log="y" , col="red" , pch="1" )
  points( mu[2,thindex] , kappa[2,thindex] , col="blue" , pch="2" )
  points( mu[3,thindex] , kappa[3,thindex] , col="green" , pch="3" )
  points( mu[4,thindex] , kappa[4,thindex] , col="black" , pch="4" )
} # end if plotResults

# Specify goals and check whether they are achieved:
source("HDIofMCMC.R")
# Goal is filtration vs condensation 95% HDI exceeds zero:
goal1Ach = ( HDIofMCMC( (mu[1,]+mu[2,])/2 - (mu[3,]+mu[4,])/2 )[1] > 0.0 )
# Goal is filtration1 vs filtration2 95% HDI exceeds zero:
goal2Ach = ( HDIofMCMC( mu[1,]-mu[2,] )[1] > 0.0 )
# Goal is condensation1 vs condensation2 95% HDI has width less than 0.2:
HDIlim = HDIofMCMC( mu[3,]-mu[4,] )
HDIwidth = HDIlim[2] - HDIlim[1]
goal3Ach = ( HDIwidth < 0.2 )
goalAchieved = c( goal1Ach , goal2Ach , goal3Ach )

return( goalAchieved )
} # end of function GoalAchievedForSample

#==============================================================================
# Now call the function defined above, using simulated data.

analysisType = c("Retro","Repli")[1] # specify [1] or [2]
fileNameRoot = paste("FilconJagsPower",analysisType,sep="")

# Load original data, for use in replication probability analysis:
# (These lines intentionally exceed the margins so that they don't take up
# excessive space on the printed page.)
CondOfSubjOrig = c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4)
nTrlOfSubjOrig = c(64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64)
nCorrOfSubjOrig = c(45,63,58,64,58,63,51,60,59,47,63,61,60,51,59,45,61,59,60,58,63,56,63,64,64,60,64,62,49,64,64,58,64,52,64,64,64,62,64,61,59,59,55,62,51,58,55,54,59,57,58,60,54,42,59,57,59,53,53,42,59,57,29,36,51,64,60,54,54,38,61,60,61,60,62,55,38,43,58,60,44,44,32,56,43,36,38,48,32,40,40,34,45,42,41,32,48,36,29,37,53,55,50,47,46,44,50,56,58,42,58,54,57,54,51,49,52,51,49,51,46,46,42,49,46,56,42,53,55,51,55,49,53,55,40,46,56,47,54,54,42,34,35,41,48,46,39,55,30,49,27,51,41,36,45,41,53,32,43,33)
nSubjOrig = length(CondOfSubjOrig)
nCondOrig = length(unique(CondOfSubjOrig))

# Load previously computed posterior mu[cond,step], kappa[cond,step] chains,
# from running FilconJags.R.
load( file="FilconJagsMuKappa.Rdata" )
chainLength = NCOL(mu)
nCond = NROW(mu) # should be 4, of course

# SPECIFY NUMBER OF SUBJECTS PER GROUP FOR SIMULATED DATA:
nSubjPerCond = 17

# Specify number of simulated experiments:
nSimExperiments = min(200,chainLength)
nSubj = nSubjPerCond * nCond # Number of subjects total.
nTrlPerSubj = 64 # Number of trials per subject; fixed by design at 64.
nGoal=3 # Determined in function above.

# If previous record of power estimation exists, load it and continue the runs.
filelist = dir( pattern=paste(fileNameRoot,"N",nSubjPerCond,"Result.Rdata",sep="") )
if ( length( filelist ) > 0 ) { # if the file already exists...
   # load  previous expIdx, nSuccess
   load(paste(fileNameRoot,"N",nSubjPerCond,"Result.Rdata",sep=""))
   prevExpIdx = expIdx
   # Use just some of the MCMC steps, distributed among the whole chain:
   chainIdxVec = round(seq(1,chainLength,len=(prevExpIdx+nSimExperiments)))
} else { # ... otherwise, start a new record
  prevExpIdx = 0
  nSuccess = rep(0,nGoal) # Initialize success counter.
  chainIdxVec = round(seq(1,chainLength,len=nSimExperiments))
}

# Simulated experiment loop begins here:
for ( expIdx in (1+prevExpIdx):(nSimExperiments+prevExpIdx) ) {

    # Generate random data from posterior parameters
    chainIdx=chainIdxVec[expIdx]
    CondOfSubj = sort( rep( 1:nCond , nSubjPerCond ) )
    nTrlOfSubj = rep( nTrlPerSubj , nSubj )
    nCorrOfSubj = rep( 0 , nSubj )
    for ( condIdx in 1:nCond ) {
        m = mu[condIdx,chainIdx]
        k = kappa[condIdx,chainIdx]
        a = m*k
        b = (1-m)*k
        # Generate random theta and z values for simulated subjects:
        thetaVec = rbeta( nSubjPerCond , a , b )
        zVec = rbinom( n=nSubjPerCond , size=nTrlPerSubj , prob=thetaVec )
        nCorrOfSubj[ CondOfSubj==condIdx ] = zVec
    }
    
    # Put data into list for JAGS program
    if ( analysisType == "Retro" ) { # retrospective power
       dataList = list(
             nCond = nCond ,
             nSubj = nSubj ,
             cond = CondOfSubj ,
             N = nTrlOfSubj ,
             z = nCorrOfSubj
             )
    }
    if ( analysisType == "Repli" ) { # replication probability
       dataList = list(
             nCond = nCond ,
             nSubj = nSubj + nSubjOrig ,
             cond = c( CondOfSubj , CondOfSubjOrig ) ,
             N = c( nTrlOfSubj , nTrlOfSubjOrig ) ,
             z = c( nCorrOfSubj , nCorrOfSubjOrig )
             )
    }

    # Make plots for first 10 simulated experiments:
    if ( expIdx <= 10 ) { plotRes = T } else { plotRes = F }
    
    # Call JAGS program and tally number of successes:
    nSuccess = nSuccess + GoalAchievedForSample( dataList ,
                                                 plotRes , fileNameRoot )
    estPower = nSuccess / expIdx
    cat( "\n*** nSubjPerCond:",nSubjPerCond, ", nSimExp:",expIdx,
      " , nSuccess:",nSuccess, ", estPower:",round(estPower,2), "\n\n" )
    flush.console()
    save( nSuccess , expIdx , estPower ,
          file=paste(fileNameRoot,"N",nSubjPerCond,"Result.Rdata",sep="") )

} # end of simulated experiment loop.