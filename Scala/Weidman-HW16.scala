// CS385 Homework 16
object hw16 extends eecs.cs385 {
  def userName = "David Weidman"
  import scala.collection.mutable.Queue
  def minCrossings(M: Int, C: Int, R: Int): Int = {
    //for all possible transitions add on to the queue and keep track of crossings
    val crossW= new Queue[(Boolean, Array[Int], Int)]
    crossW.enqueue((true, Array(M,C,0,0,0,0),0))
    while(!crossW.isEmpty){
      val elem= crossW.dequeue
      if(elem._2(0)==0&&elem._2(1)==0&&elem._2(2)==0&&elem._2(3)==0)return elem._3 
      if(elem._1==true)
        for(M <- -R to R)
          for(C <- -R to R){
            if(((M< 0&&M>=elem._2(2))||(M>0&& M<=elem._2(0)))&&((C< 0&&C>=elem._2(3))||(C>0&& C<=elem._2(1)))&&(M+ elem._2(2)>0 || C+elem._2(3)>0) && M + C + elem._2(2) +elem._2(3)< R+1 && (M + elem._2(2)>= elem._2(3) + C || M + elem._2(2)==0)&& elem._2(0)-M>=elem._2(1)-C)
              crossW.enqueue((false,Array(elem._2(0)-M,elem._2(1)-C,elem._2(2)+M,elem._2(3)+C,elem._2(4),elem._2(5)),elem._3+1))
          }
      else
        for(M <- -R to R)
          for(C <- -R to R)
            if(((M< 0&&M>=elem._2(2))||(M>0&& M<=elem._2(4)))&&((C< 0&&C>=elem._2(3))||(C>0&& C<=elem._2(5)))&&(M+ elem._2(2)>0 || C+elem._2(3)>0) && M + C + elem._2(2) +elem._2(3)< R+1 && (M + elem._2(2)>= elem._2(3) + C || M + elem._2(2)==0) && elem._2(4)-M>=elem._2(5)-C)
              crossW.enqueue((true,Array(elem._2(0),elem._2(1),elem._2(2)+M,elem._2(3)+C,elem._2(4)-M,elem._2(5)-C),elem._3+1))
    }
    -1
  }

  def minPushes(rinkString: String,frictionLimit:Int): Int = {
	 val rink = rinkString.trim().split("\\s+") // pretend rink is the argument
	 val q= Queue((0,0,0))//x y count
   while(!q.isEmpty){
    val coords= q.dequeue
    if(coords._3==6)return -99
    for(x <- 1 to frictionLimit+1){
      if(coords._1 + x < rink.size)
        if(rink(coords._1 + x)(coords._2)=='h'&& x==frictionLimit) return coords._3
        else if(rink(coords._1 + x)(coords._2)=='#'|| coords._1 + x == rink.size-1||x==frictionLimit)
         q.enqueue((coords._1 + x,coords._2,coords._3+1))
      if(coords._1 - x > -1)
        if(rink(coords._1 - x)(coords._2)=='h'&& x==frictionLimit) return coords._3
        else if(rink(coords._1 - x)(coords._2)=='#'|| coords._1 - x == 0||x==frictionLimit)
         q.enqueue((coords._1 - x,coords._2,coords._3+1))
      if(coords._2 + x < rink.size)
        if(rink(coords._1)(coords._2 + x)=='h'&& x==frictionLimit) return coords._3
        else if(rink(coords._1)(coords._2 + x)=='#'|| coords._2 + x == rink.size-1||x==frictionLimit)
         q.enqueue((coords._1,coords._2+x,coords._3+1))
      if(coords._2 - x > -1)
        if(rink(coords._1)(coords._2 - x)=='h'&& x==frictionLimit) return coords._3
        else if(rink(coords._1)(coords._2-x)=='#'|| coords._2 - x == 0||x==frictionLimit)
         q.enqueue((coords._1,coords._2-x,coords._3+1))
      }
    }
    -1
  }

  def minDays(mapString: String): Int = {
	 val map = mapString.trim().split("\\s+") // pretend map is the argument
	 ???
  }

  test("minCrossings",minCrossings _,"M","C","R")
  test("minPushes",minPushes _,"rink","frictionLimit")
  ignoretest("minDays",minDays _,"map")
}
hw16.run
