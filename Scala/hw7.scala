import scala.collection.mutable.Queue

//Missionaries and Cannibals

/*
 * A State consists of the number of missionaries on the left
 * bank (ML), number of cannibals on the left bank (CL), whether
 * or not the boat is on the left bank (BL), number of
 * missionaries on the right bank (MR), and number of cannibals
 * on the right bank (CR)
 * 
 * At a minimum, you need to write a nextStates method that will
 * return a List of all valid states that one could transition to
 * from the current state
 */ 
case class State (ML: Int, CL: Int, BL: Boolean, MR: Int, CR: Int){
  def nextStates(R: Int): List[State] = {
    var retList= List[State]()
    if (R==0){
      if(BL & ML>=CL) retList= List(State(ML,CL,!BL,MR,CR))
      else if(!BL & MR>=CR) retList= List(State(ML,CL,!BL,MR,CR))
      else retList= List[State]()
    }
    else if (BL){
      if(ML>0 & CL>0) retList=List(State(ML,CL,!BL,MR,CR)):::State(ML-1,CL,BL,MR+1,CR).nextStates(R-1):::State(ML,CL-1,BL,MR,CR+1).nextStates(R-1)
      else if(ML>0) retList=List(State(ML,CL,!BL,MR,CR)):::State(ML-1,CL,BL,MR+1,CR).nextStates(R-1)
      else if(CL>0) retList=List(State(ML,CL,!BL,MR,CR)):::State(ML,CL-1,BL,MR,CR+1).nextStates(R-1)
      else retList= List(State(ML,CL,!BL,MR,CR))
    }
    else{
      if(MR>0 & CR>0) retList=List(State(ML,CL,!BL,MR,CR)):::State(ML+1,CL,BL,MR-1,CR).nextStates(R-1):::State(ML,CL+1,BL,MR,CR-1).nextStates(R-1)
      else if(MR>0) retList=List(State(ML,CL,!BL,MR,CR)):::State(ML+1,CL,BL,MR-1,CR).nextStates(R-1)
      else if(CR>0) retList=List(State(ML,CL,!BL,MR,CR)):::State(ML,CL+1,BL,MR,CR-1).nextStates(R-1)
      else retList= List(State(ML,CL,!BL,MR,CR))
    }
    retList.toSet.toList.filter(x=>((x.ML>=x.CL)|(ML==0)&(x.MR>=x.CR)|(MR==0)))
  }   
}


/*
 * crossings is your main function, which will take the number of
 * missionaries(M), cannibals(C), and the capacity of the boat(R) 
 * as arguments and return the number of minimum number of moves 
 * required to get all people safely to the other side of the river.
 * If there is no solution for a given combination of M, C, and R, 
 * the function should return -1.
 */
def crossings(M: Int, C: Int, R: Int): Int = {
  val init= State(M,C,true,0,0)
  val queue = scala.collection.mutable.Queue(init -> List(init))
  var visited = Set(init)
  while(queue.nonEmpty){
    val (curr, list) = queue.dequeue()
    if (curr == State(0,0,false,M,C)){
      println(list)
      return list.length
    }
    for (n <- curr.nextStates(R)){
      if(!visited(n)){
        queue.enqueue(n -> (n +: list))
        visited += n
      }
    }
  }
  println("No Safe Passage Exists")
  return -1
}

// Run the test function to test crossings
// The hw7.tests file, which contains the test cases
// is assumed to be in the same folder as this file

def test {
  println("Testing crossings(M,C,R):")
  var count = 0
  for (line <- io.Source.fromFile("hw7.tests").getLines) {
    count += 1
    val Array(m,c,r,expectedAnswer) = line.trim.split(" ").map(_.toInt)
    val actualAnswer = crossings(m,c,r)
    if (actualAnswer == expectedAnswer) {
      print(".")
    }
    else {
      println
      println(s"Failed test #$count: M=$m C=$c R=$r")
      println(s"Expected answer $expectedAnswer, but you answered $actualAnswer.")
      return
    }
  }
  println
  println(s"Passed all $count tests.")
}


