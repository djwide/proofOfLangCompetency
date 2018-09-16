import scala.math
import util.{Random => R} 
/**
* Name: David Weidman
* File Name: hw0.scala
*/
// CDT Mortenson '14, H4 told me how to run the scala files from terminal

object test{
  def main(args: Array[String])= {
    print(guessingGame)
  }
  
  
  
  //Number 1
  /**
  * circleOverlap(0,0,1,3,3,1)
  * false
  *
  * circleOverlap(0,0,1,1,1,1)
  * true
  */
  
  def circleOverlap(x1: Double, y1: Double, r1:Double, x2:Double, y2:Double, r2:Double): Boolean={
    val over= r1+r2> distance(x1,y1,x2,y2) //A circle within the other implies overlap
    over
  }
  def distance (x1:Double, y1:Double,x2:Double,y2:Double): Double={
    math.sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1))
  }
  
  
  
  
  //Number 2
  
  /*
  *fibonator(1)
  * 0
  *
  *fibonator(5)
  * 3
  */
  def fibonator(n: Int): Int={
    var int1= 0
    var int2= 1
    var temp= 0
    if (n==1)
      return 0
    if (n==2)
      return 1
    for (i <-1 to (n-2)){
      temp = int2
      int2+=int1
      int1 = temp
    }
    int2
  }
  
  
  
  // Number 3
  
  /*
  * x= 5
  * num = 5
  * you win
  *
  * x= 5
  * num = 4
  * Too low
  *
  */
  
  def guessingGame={
    val x= R.nextInt(1000)+1
    println(x)
    var count = 0
    var num = 4
    do {
      num = readInt
      if(num>x)
        println("Too high")
      if(num<x)
        println("Too low")
      count +=1
    }
    while (num != x & count <11)
    if(num==x)
      println("You win")
    else
      println("You lose :(")
  }
  
}
