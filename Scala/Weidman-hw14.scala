// CS385 Homework 14
object hw14 extends eecs.cs385 {
  def userName = "DJWeidman"
  
  class UFNode { // an element in the Union-Find data structure
    var size = 1
    var parent: UFNode = null
    def find(): UFNode = {
      if (parent == null) this
      else {
        parent = parent.find()
        parent
      }
    }
    def union(other: UFNode): Unit = {
      val x = find()
      val y = other.find()
      if (x != y) { // if they're equal, then no need to union
        if (x.size < y.size) { // make y the root
          y.size += x.size
          x.parent = y
        }
        else { // make x the root
          x.size += y.size
          y.parent = x
        }
      }
    }
  }

  // *** insert running time ***
  def spy(n: Int, events: Array[(Int,Int,Char)]): String = {
    val UFNArr = Array.fill(n)(new UFNode)
    var (count, resStr)= (0, "")
    var pointer = 0
    var first = true
    for(x<- events) {
      if(x._3=='A') UFNArr(x._1).union(UFNArr(x._2))
      else if(x._3=='E')
        if(UFNArr(x._1).find== UFNArr(0).find &&first==true) {
            UFNArr(x._1).union(UFNArr(0))
            pointer= x._2
            first=false
        }
        else if(first==true){
          UFNArr(x._2).union(UFNArr(0))
          pointer= x._1
          first= false
        }
        else if(UFNArr(x._1).find== UFNArr(0).find){
          UFNArr(x._1).union(UFNArr(0))
          UFNArr(x._2).union(UFNArr(pointer))
        }
        else {
          UFNArr(x._1).union(UFNArr(pointer))
          UFNArr(x._2).union(UFNArr(0))          
        } 
      else//? 
        if(UFNArr(x._1).find== UFNArr(x._2).find) resStr= resStr+ "A"
        else if(pointer!=0)resStr=resStr+"E"
        else resStr= resStr+ "?"

      count= count+1
    }
    resStr
  }
  
  // *** O(1) given constant board size O(n^2 if scaled) ***
  def alive(boardString: String): (Int, Int) = {
    val board: Array[String] = boardString.trim().split("\\s+")
    val UFArr= Array.fill(5,5)(new UFNode)
    var lifeSet= Set((-1,-1))
    var (cx,cy)= (0,0)
    for(x<- board){
      for(y<-x){
        if(cx+1< 6 &&board(cx+1)(cy)==y) UFArr(cx)(cy).union(UFArr(cx+1)(cy))
        else if(cx-1> -1 &&board(cx-1)(cy)==y) UFArr(cx)(cy).union(UFArr(cx+1)(cy))
        else if(cy+1< 6 &&board(cx)(cy+1)==y) UFArr(cx)(cy).union(UFArr(cx+1)(cy))
        else if(cy-1> -1 &&board(cx)(cy-1)==y) UFArr(cx)(cy).union(UFArr(cx+1)(cy))

        if(board(cx)(cy)=='.')
          lifeSet= lifeSet+((cx,cy))
        cy= cy+1
      }
      cx=cx+1
    }
    val tempNode= new UFNode
    var BliveParSet=Set(tempNode)
    var WliveParSet=Set(tempNode)
    lifeSet= lifeSet - ((-1,-1))
    for (x<- lifeSet){
      if (board(x._1-1)(x._2)=='B')
        BliveParSet=BliveParSet+UFArr(x._1-1)(x._2).find
      if (board(x._1-1)(x._2)=='W')
        WliveParSet=WliveParSet+UFArr(x._1-1)(x._2).find
      if (board(x._1-1)(x._2)=='B')
        BliveParSet=BliveParSet+UFArr(x._1+1)(x._2).find
      if (board(x._1-1)(x._2)=='W')
        WliveParSet=WliveParSet+UFArr(x._1+1)(x._2).find
      if (board(x._1-1)(x._2)=='B')
        BliveParSet=BliveParSet+UFArr(x._1)(x._2-1).find
      if (board(x._1-1)(x._2)=='W')
        WliveParSet=WliveParSet+UFArr(x._1)(x._2-1).find
      if (board(x._1-1)(x._2)=='B')
        BliveParSet=BliveParSet+UFArr(x._1)(x._2+1).find
      if (board(x._1-1)(x._2)=='W')
        WliveParSet=WliveParSet+UFArr(x._1)(x._2+1).find
    }
    var (wCount,bCount)=(0,0)
    BliveParSet=BliveParSet- (tempNode)
    WliveParSet=WliveParSet- (tempNode)
    for (x<-WliveParSet) wCount= x.find.size
    for (x<-BliveParSet) bCount= x.find.size
    (wCount,bCount)
  }
  
  test("spy",spy _,"n","events")
  test("alive",alive _,"board")  
}
hw14.run
