// CS385 Homework 8
object hw8 extends eecs.cs385 {
  def userName = "David Weidman"

  // O(n^2)
  def minLetters(s: String): Int = {
    val len = s.length
    if(len==0||len==1)return 0
    val dynArray= Array.fill(len+1, len+1)(-1)
    def best(lo:Int,hi:Int):Int=
      if(dynArray(lo)(hi)== -1)
        if (lo >= hi) {
          dynArray(lo)(hi)=0
          0
        }
        else if (s(lo) == s(hi)){
          val temp1= best(lo+1,hi-1)
          dynArray(lo)(hi)=temp1
          temp1
        } 
        else{
          val temp2= 1 + (best(lo+1,hi) min best(lo,hi-1))
          dynArray(lo)(hi)=temp2
          temp2
        }  
      else dynArray(lo)(hi)
    best(0,len-1)
  }
  
  // the first few Fibonacci numbers (you won't need fibs bigger than this)
  val fibs = Array(1,2,3,5,8,13,21,34,55,89,144,233)

  // ***O(M*N*F(/2))***
  def minBreaks(m: Int, n: Int): Int = { 
    val dynArray= Array.fill(m+1, n+1)(-1)
    def dynBreaks(ms:Int,ns:Int):Int=
      if ((ms==1 && ns==1)||(fibs.indexOf(ms max ns) - fibs.indexOf(ms min ns) == 1)){
        dynArray(ms)(ns) = 0
        0
      }
      else if(dynArray(ms)(ns)== -1){
        var best = 255 // big enough to pass test.  If applying in real world you would know largest possible value in system.
        for (i <- 1 to ms/2){
          val breaksm = 1 + minBreaks(i,ns) + minBreaks(ms-i,ns)
          best = best min breaksm
        }
        for (i <- 1 to ns/2){
          val breaksn = 1 + minBreaks(ms,i) + minBreaks(ms,ns-i)
          best = best min breaksn
        }
        dynArray(ms)(ns)= best
        best
      }
      else  dynArray(ms)(ns)
    dynBreaks(m,n)
  }


  val gloArray= Array.fill(233, 233)(-1)
  // ***O(233*233*F(/2)) then O(1) then on out more or less***
  // ***I imagine this isn't what you're going for***
  def minBreaksBetter(m: Int, n: Int): Int = {
    def dynBreaks(ms:Int,ns:Int):Int=
      if ((ms==1 && ns==1)||(fibs.indexOf(ms max ns) - fibs.indexOf(ms min ns) == 1)){
        gloArray(ms)(ns) = 0
        0
      }
      else if(gloArray(ms)(ns)== -1){
        var best = 255 // big enough to pass test.  If applying in real world you would know largest possible value in system.
        for (i <- 1 to ms/2){
          val breaksm = 1 + minBreaks(i,ns) + minBreaks(ms-i,ns)
          best = best min breaksm
        }
        for (i <- 1 to ns/2){
          val breaksn = 1 + minBreaks(ms,i) + minBreaks(ms,ns-i)
          best = best min breaksn
        }
        gloArray(ms)(ns)= best
        best
      }
      else  gloArray(ms)(ns)
    dynBreaks(m,n)
  }

  ignoretest("minLetters (Dyn. Prog.)",minLetters _,"s")
  ignoretest("minBreaks (Dyn. Prog.)",minBreaks _,"m","n")
  test("minBreaksBetter (Extra Credit)",minBreaksBetter _,"m","n")
}
hw8.run
