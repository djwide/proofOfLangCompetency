// CS385 Homework 4
object hw4 extends eecs.cs385 {
  def userName = "David Weidman"

  // the first few Fibonacci numbers (you won't need fibs bigger than this)
  val fibs = Array(1,2,3,5,8,13,21,34,55) //slightly modified

  def minBreaks(m: Int, n: Int): Int = { // assume both m and n are positive
	if(m==1 && n==1) return 0
	var (bigger, smaller)= (m max n, m min n)
  	var (bNextInd, ret) = (bSearch(bigger, 0, 9), 255)
  	if (m==n) for(i <- bNextInd-1 to bNextInd/2 by -1) ret = ret min biasIndHelper(i)
  	else for(i <- bNextInd to bNextInd/2 by -1)	ret = ret min biasIndHelper(i)
  	//O for outside
  	def biasIndHelper(biasInd: Int): Int= { //returns best of certain biasInd
	    var bias = fibs(biasInd)
		if (fibs.contains(bigger) && bias ==smaller) 0
		else if(fibs.contains(bigger) && bias > smaller) 1 +minBreaks(bigger-fibs(biasInd-1), smaller)
		else if(fibs.contains(bigger) && bias < smaller) 1 +minBreaks(bigger, smaller- bias)
		else if(fibs.contains(smaller)) 1+  minBreaks(bigger-bias, smaller)+minBreaks(bias, smaller)
		else if (bias >smaller) 1 + minBreaks(bigger-bias, smaller) + minBreaks(bias, smaller)
		else  1 + minBreaks(bigger, smaller- bias) + minBreaks(bigger, bias)
	}
  	ret
  }


   def bSearch(x : Int, low: Int, high: Int): Int = { //returns next highest fib
      val mid = (low + high) / 2
      if(mid == high) return high
      if(fibs(mid) <= x && fibs(mid+ 1) > x) mid
      else if (fibs(mid) > x) bSearch (x, low, mid-1)
      else bSearch(x, mid+1, high)
  }

/* ANALYSIS PROBLEMS

	aT(n/b) + n^d

Commodore-Sort
  3T(n/3) + n^0
  3>1
  O(n)

Ruby G
  3T(n/2) + n^1
  3>2
  O(n^(ln(3)/ln(2)))= O(n^1.58)
*/

  test("minBreaks",minBreaks _,"m","n",3000)
}
hw4.run
