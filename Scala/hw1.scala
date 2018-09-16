import scala.collection.mutable.Stack

object hw1{
  def main(args: Array[String])= {
    val list= List(1,1,2,3,4,4,5,6,1)// for testing countSmallers
    print(countSmaller2(6,list))
  }
/*
Your task is to write a function, countSmaller, that takes an Int, x,
and a List of Ints and returns the number of values in the list that
are smaller than x.  Sounds simple, no?  Okay, then your task is to 
write 5 different functions that accomplish this task (name them 
countSmaller1, countSmaller2, etc.).  One of your solutions must be a 
full function that iterates through your list using either recursion 
or a loop.  The other 4 must be "one-liners" making use of the various
methods available on the default Scala List type.   

For example, you could do:
def countSmaller(x: Int, list: List[Int]): Int = list.count(_<x)

Except, now you cannot use that one, since I gave it to you.  Try to 
make your solutions as different as possible.  I encourage you to try 
to use foldLeft for one of them.
*/

  /*
  * countSmaller(6, list) unsorted list given above
  * 8
  */
  
  def countSmaller1(x: Int, list: List[Int]): Int = {
    var count = 0
    for(elem <- list; if elem<x) count +=1
    count
  }
  
  def countSmaller2(x: Int, list: List[Int]): Int = list.sorted.indexWhere(_>=x)
  
  def countSmaller3(x: Int, list: List[Int]): Int = list.groupBy(_<x)(true).length
  
  def countSmaller4(x: Int, list: List[Int]): Int = list.filterNot(_>=x).length
  
  def countSmaller5(x: Int, list: List[Int]): Int = list.filter(_<x).length

/*
An important part of parsing a program in virtually all 
programming languages is making sure that the brackets 
match sensibly, especially in languages that have multiple
kinds of brackets (parentheses vs square brackets vs curly 
braces).
 
The brackets must be balanced, meaning that:

1. all the brackets occur in (not necessarily adjacent) pairs
of the same kind (parentheses vs square brackets vs curly 
braces), with the open bracket preceding the close bracket

2. no bracket can be part of more than one pair

3. no pairs can be interleaved as in ([)] (although ([]) would
be fine). 

You will write a function balanced(str) that takes a string 
containing nothing except a combination of the 6 possible 
bracket characters ()[]{}, and determines whether or not the 
string is balanced.

Use of a stack is highly encouraged, although there are ways
to solve this without a stack
*/

  /*
  * balanced("([{}[]])")
  * True
  *
  *
  * balanced("{)")
  * False
  */
  
  def balanced(str: String): Boolean ={
    val stackItUp:Stack[Char]= Stack()
    val parList: List[Char]= List('(',')','[',']','{','}')
    for(char <- str){
      if (!stackItUp.isEmpty & parList.contains(char)){
        if((stackItUp.head.toByte == 40 & char.toByte== 41)|(stackItUp.head.toByte == 123 & char.toByte== 125)|(stackItUp.head.toByte == 91 & char.toByte== 93)) stackItUp.pop
        else stackItUp.push(char)
      }
      else if(parList.contains(char)) stackItUp.push(char)
    }
    if(stackItUp.isEmpty) true
    else false
  }
}

