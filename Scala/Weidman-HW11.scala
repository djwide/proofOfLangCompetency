// CS385 Homework 11
object hw11 extends eecs.cs385 {
  def userName = "David Harleyson Weidman"
  
  // ***which problems do you want counted as required?***

  // ***design techniques used***
  // ***running time***
  def maxObstacles(h: Array[Int]): Int = {
	 ???
  }

  // ***design techniques used***
  // ***running time***
  def thereAndBackAgain(grid: Array[Array[Int]]): Int = {
	 ???
  }

  // ***Definitely some greediness. choosing the greatest ***
  // ***O(nlogn)***
  //if I have any non tiebreaker errors I couldn't see them
  def lotteryPick(n: Int, picks: List[Int]): Int = {
	 val p2= picks.sorted
   var lowBound= p2(0)
   var max= p2(0)
   var sol= p2(0)-2
   for (x <- p2.tail) {
    if(x-lowBound > max){//> should solve my tiebreaker problem but it's not
      max = x-lowBound
      sol = lowBound+1
    }
    lowBound= x
  }
  if(n-lowBound+1>max)sol= lowBound+1
  if(sol==0)sol=1
  sol

  }
  
  // ***dynPro & djikstra sort of Deal***
  // ***O(n^3)***
  def nthLucky(n: Int, basics: (Int, Int, Int)): Int = {
	 val (xn,yn,zn)= basics
   val multArr= Array.fill(n+1,n+1,n+1)(1)
   for(x <- 0 to n)for(y<-0 to n)for(z<-0 to n)
    multArr(x)(y)(z)= (math.pow(xn,x)*math.pow(yn,y)*math.pow(zn,z)).toInt
   //for(x<-multArr)for(y<-x)println(y.mkString)
   
   //phase 2
   var count = 0
   var inds= Set((1,0,0),(0,1,0),(0,0,1))
   var minInd= Set[(Int,Int,Int)]()
   while(count < n){//max 9 comparisons
      //println(inds.toString)
      minInd= Set[(Int,Int,Int)]()
      for(coord<- inds)
        if(inds.forall(x=>multArr(coord._1)(coord._2)(coord._3)<= multArr(x._1)(x._2)(x._3)))
          minInd= minInd +coord
        inds= inds --minInd
        for (i<- minInd)inds= inds++Set((i._1+1,i._2,i._3),(i._1,i._2+1,i._3),(i._1,i._2,i._3+1))
    count = count+1
   }
   //println(inds.toString)
   val solInd= minInd.head
   multArr(solInd._1)(solInd._2)(solInd._3)
  }

  ignoretest("maxObstacles",maxObstacles _,"h")
  ignoretest("thereAndBackAgain",thereAndBackAgain _,"grid")  
  test("lotteryPick",lotteryPick _,"n","picks")
  test("nthLucky",nthLucky _,"n","basics")
}
hw11.run
