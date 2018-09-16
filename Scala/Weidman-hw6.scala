// CS385 Homework 6
object hw6 extends eecs.cs385 {
  def userName = "David Weidman"

  // ordinary divide-and-conquer
  def minLetters1(s: String): Int = { // do NOT call minLetters2
	  //if(s== "ELECTRICAL") return 5
    val len= s.length
    var mn = 255
    if(len ==1 || len ==0) return 0
    def compare(lo: Int, hi: Int): Int={
      if(hi < lo) 0
      else if(s(lo)==s(hi)) compare(lo+1, hi-1)
      else  1+ compare(lo, hi-1) min 1+ compare(lo+1, hi)
    }
    compare(0,len -1)
  }

  // with memoization
  def minLetters2(s: String): Int = { // do NOT call minLetters1
	  ???
  }

  //more like sordidMeasure. Haha.  Haha. Haha...
  // *** O(n^2) ***
  // *** brute force ***
  def sortedMeasure(a: Array[Int]): Int = {
   val aLen= a.length 
   var m= 0
   for (x <- 0 to aLen-1) 
    for(y <- x+1 to aLen-1)
      if(a(y)-a(x)< 0) m= m max y-x

   /* My real attempt.  It doesn't work of course but it's linear
   val aLen= a.length //n
   var stackIsh= List((a(0),1))
   var max= 0
   for (i <- 1 to aLen-1){
      var temp=a(i)
      while(!stackIsh.isEmpty && temp< (stackIsh(0)_1)){
        max= i-(stackIsh(0)_2)
        stackIsh= stackIsh.tail //popIsh
      }
      if (stackIsh.isEmpty) stackIsh= List((a(i), i))
      else stackIsh =(temp,i)+:stackIsh
    }
   max
   */
   m
  }
  test("minLetters1 (Divide-and-Conquer)",minLetters1 _,"s")
  ignoretest("minLetters2 (Memoization)",minLetters2 _,"s")
  ignoretest("sortedMeasure",sortedMeasure _,"a")
}
hw6.run
