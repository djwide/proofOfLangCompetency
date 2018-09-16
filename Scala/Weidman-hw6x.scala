// CS385 Homework 6X (eXtension + eXtra-credit)
object hw6x extends eecs.cs385 {
  def userName = "David Weidman"


  // with memoization
  def minLetters(s: String): Int = { // do NOT call minLetters2
    val len= s.length
    val memo = Array.fill(len)(Array.fill(len)(0))
    if(len ==1 || len ==0) return 0
    def compare(lo: Int, hi: Int): Int={
      if(hi> lo && memo(lo)(hi)==0)
          if(s(lo)==s(hi)&& lo!=hi) memo(lo)(hi)= compare(lo+1, hi-1)
          else memo(lo)(hi)= (1+ compare(lo, hi-1)) min (1+ compare(lo+1, hi))
      memo(lo)(hi)
    }
    compare(0,len -1)
  }


  //I'll leave this in to show you I tried I guess
  def maxStrips(fabric: Array[Int]): Int = {
    // assume fabric.length == 4
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
            val tQ =Array.fill(20)(-1) //this line killed me i think

            hFabric.copyToArray(tFabric)// how do I copy in scala without Aliasing
            q.copyToArray(tQ)           // this can't be the only way
            tFabric(color)= remain
            tQ(n)= color
            mx = mainHelper(n+1, tFabric, tQ) max n
          }
        } 
      mx
    }
    def geoHelper(n: Int): Array[Int]={//constant but inelegant
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

  test("minLetters (Memoization)",minLetters _,"s")
  test("maxStrips",maxStrips _,"fabric")
}
hw6x.run