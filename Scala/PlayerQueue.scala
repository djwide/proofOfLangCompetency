package Milestone4
  
 

class PlayerQueue {
  val start = scala.util.Random.nextInt(3)
  var playerQ= {
    if(start==0) scala.collection.immutable.Queue[Int](0,1,2,3)
    else if(start==1) scala.collection.immutable.Queue[Int](1,2,3,0)
    else if(start==2)scala.collection.immutable.Queue[Int](2,3,0,1)
    else scala.collection.immutable.Queue[Int](3,0,1,2)
  }
  def current:Int={
    playerQ.front
  }
  def showQ:String={
    playerQ.mkString
  }
  def size:Int={
    playerQ.size
  }
  def advance:Int={
    val p= playerQ.dequeue._1
    playerQ= playerQ.dequeue._2.enqueue(p)
    p
  }
  def removePlayer(p:Int)={
    playerQ= playerQ.filter(_!=p)
  }
}