// CS385 Homework 2
object hw2 extends eecs.cs385 {
  def userName = "David Weidman"

  // O(n) should touch every element once.  Only constant time calcs at each
  def numPairs(area: Int, fences: Array[Int]): Int = {
    var (iLow,l, fenceCount, breakCond) = (0,fences.length, 0, false)
    var iHigh=l-1
    while (iLow<= iHigh){
      breakCond= false
      if(area%fences(iLow)==0){
        var i2Goal = area/fences(iLow)
        while(iHigh >= iLow && breakCond==false)
          if(i2Goal==fences(iHigh)){
            fenceCount= fenceCount+1
            breakCond=true
          }
          else if(i2Goal> fences(iHigh))breakCond= true
          else iHigh = iHigh-1
      }
      iLow = iLow+1
    }
    fenceCount
  }

  // O((2)log(n))
  def count(x: Int, a: Array[Int]): Int = { 
    if(a.isEmpty) return 0 
    def endFinder(bottom:Int): Int ={//bottom allows top search and bottom search 
      var (lo, size)= (0, a.size-1)  //to be in one function where 1= bottom search
      var hi = size-1
      while(lo <= hi && hi>1){ //binSearch log(n)
        var mid = (lo+hi)/2
        if(a(mid+2*bottom-1)==x && a(mid)!=x) return mid 
        else if(a(mid) <= x-bottom) lo = mid+1           
        else hi= mid-1
      }
      if(bottom==1 && a(0)== x) -1
      else if(bottom==0 && a(size-1)==x)size
      else -2
    }
    var (low, high)= (endFinder(1), endFinder(0)) //*2 line32
    if(low== -2 ||high == -2) 0
    else high- low -1
  }

  // O((2)C+log(T))
  def maxBricks(kids: Int, bricksPerColor: List[Int]): Int = {
    var (lo, hi, tempSol)= (1, bricksPerColor.max, 0) //n
    while(lo <= hi){ //log(Bricks)
      var mid = (hi+lo)/2
      var possibleAccomodated= groups(mid)
      if(possibleAccomodated>=kids) {//same worst case my ave case is screwed up though I think
        tempSol=mid
        lo= mid+1
      }          
      else hi= mid-1
    }
    def groups(B: Int): Int={
      var retCount= 0
      for (brickNum <- bricksPerColor){
        retCount= retCount+brickNum/B //N
      }
      retCount
    }
    tempSol
  }
  
  test("numPairs",numPairs _,"fences","area")
  test("count",count _,"a","x")
  test("maxBricks",maxBricks _,"kids","bricksPerColor")
}
hw2.run


