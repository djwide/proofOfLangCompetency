// CS385 Homework 7
object hw7 extends eecs.cs385 {
  def userName = "David Weidman the first"

  // with recursion
  //seems like there should be a way to 
  //index pass but with discontinuous sets sets of numbers
  //I revert to using another data structure to hold the 
  //indices anyways
def depressingSamples(a: Array[Int]): Int = {
  val aLen= a.length
  var ansSet= Set[List[Int]]()
  val indList= (0 to aLen-1).toList
  def splitHelper(indList:List[Int]):Unit={
    val siz= indList.size
    if(strictInc(indList)){
      ansSet= ansSet+indList
    }  
    if(siz>2) for(i <- indList){
      var y= List[Int]()
      for(x<- 0 to siz-1){
        val corVal = indList(x) //not ideal lookup
        if(corVal!=i)y= corVal::y
      }
      splitHelper(y.reverse)
    }
  }
  def strictInc(indList:List[Int]):Boolean={
    var trip = true
    var temp= a(indList.head)
    for(i <- indList.tail){
      if (a(i)<= temp) trip = false
      temp = a(i)
    }
    trip
  }
splitHelper(indList)
ansSet.size
}
  

// with memoization
def depressingSamplesMemo(a: Array[Int]): Int = {
	 val aLen= a.length
   var count = 0
   var memSet= Set[List[Int]]()
   val indList= (0 to aLen-1).toList
   def splitHelper(indList:List[Int]):Unit={
      if(!memSet(indList)){
        memSet = memSet+indList
        val siz= indList.size
        if(strictInc(indList)){
          count= count+1
        }  
        if(siz>2) for(i <- indList){
          var y= List[Int]()
          for(x<- 0 to siz-1){
            val corVal = indList(x) //not ideal lookup
            if(corVal!=i)y= corVal::y
          }
          splitHelper(y.reverse)
        }
      }
    }
  def strictInc(indList:List[Int]):Boolean={
    var trip = true
    var temp= a(indList.head)
    for(i <- indList.tail){
      if (a(i)<= temp) trip = false
      temp = a(i)
    }
    trip
  }
  splitHelper(indList)
  count
}

  // No Sex
  def safeStrings(n: Int): Long = {
	 val inds= (0 to n-1).toArray  
   val memo= Array.fill(n)(0.0)
   def indHelp(lo:Int, hi:Int):Double={
    if(hi < n) 
      if(lo>2){// =val should be memoed
        var sum = 0.0
        for(i<- 0 to lo)
          sum = sum+ memo(i)
        val newMem= math.pow(3,(n-hi-1)+lo)+indHelp(lo+1,hi+1) - sum
      memo(lo)= newMem
      newMem
      }
    else {
      val newMem= math.pow(3,(n-hi-1)+lo)+indHelp(lo+1,hi+1)
      memo(lo)= newMem
      newMem
    }
    else 0
  }
   (math.pow(3,n)-indHelp(0,2)).toLong
  
  }

  // Quilt
  def maxStrips(fabric: Array[Int]): Int = {
    var n= 1
    var mx= 1
    val quilt= Array.fill(20)(-1)
    def mainHelper(n: Int, hFabric: Array[Int], q: Array[Int]):Int ={
      val size= (n+1)/2
      val notNext= geoHelper(n)
      for (color <- 0 to 3) 
        if(!notNext.contains(color)) {
          var remain= hFabric(color)-size
          if(remain>=0) {
            val tFabric= Array(0,0,0,0)
            val tQ =Array.fill(20)(-1) 

            hFabric.copyToArray(tFabric)
            q.copyToArray(tQ)           
            tFabric(color)= remain
            tQ(n)= color
            mx = mainHelper(n+1, tFabric, tQ) max n
          }
        } 
      mx
    }
    def geoHelper(n: Int): Array[Int]={
      var notNext =Array(-1)
      if (n>3){ 
        if(quilt(n-1)==0||quilt(n-3)==0||quilt(n-4)==0) notNext = notNext :+0
        if(quilt(n-1)==1||quilt(n-3)==1||quilt(n-4)==1) notNext = notNext :+1
        if(quilt(n-1)==2||quilt(n-3)==2||quilt(n-4)==2) notNext = notNext :+2
        if(quilt(n-1)==3||quilt(n-3)==3||quilt(n-4)==3) notNext = notNext :+3
      }
      else if(n==3){
        if(quilt(n-1)==0||quilt(n-3)==0) notNext = notNext :+0
        if(quilt(n-1)==1||quilt(n-3)==1) notNext = notNext :+1
        if(quilt(n-1)==2||quilt(n-3)==2) notNext = notNext :+2
        if(quilt(n-1)==3||quilt(n-3)==3) notNext = notNext :+3
      }
      else if (n==2){
        if(quilt(n-1)==0||quilt(n-2)==0) notNext = notNext :+0
        if(quilt(n-1)==1||quilt(n-2)==1) notNext = notNext :+1
        if(quilt(n-1)==2||quilt(n-2)==2) notNext = notNext :+2
        if(quilt(n-1)==3||quilt(n-2)==3) notNext = notNext :+3
      }
      else{
        if(quilt(n-1)==0) notNext = notNext :+0
        if(quilt(n-1)==1) notNext = notNext :+1
        if(quilt(n-1)==2) notNext = notNext :+2
        if(quilt(n-1)==3) notNext = notNext :+3
      }
      notNext 
    }
    mainHelper(n, fabric, quilt)
  }

  ignoretest("depressingSamples (Recursion)",depressingSamples _,"a")
  ignoretest("depressingSamplesMemo",depressingSamplesMemo _,"a")
  ignoretest("safeStrings",safeStrings _,"n")
  test("maxStrips",maxStrips _,"fabric")
}
hw7.run

