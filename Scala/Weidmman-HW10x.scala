// CS385 Homework 10 Extra Credit
object hw10x extends eecs.cs385 {
  def userName = "David Weidman"
  def minLetters(S: String): Int = {
	  if(S== "")return 0
	  val best = Array.fill[Int](2, S.length)(0)
	  for (lo <- S.length-1 to 0 by -1)
	    if(lo%2==0)
		    for (hi <- 0 to S.length-1)
		      best(0)(hi) = {
		        if (lo >= hi) 0
		        else if (S(lo) == S(hi)) best(1)(hi-1)
		        else 1 + (best(1)(hi) min best(0)(hi-1))
		      }
		else if(lo%2==1)
		    for (hi <- 0 to S.length-1)
		      best(1)(hi) = {
		        if (lo >= hi) 0
		        else if (S(lo) == S(hi)) best(0)(hi-1)
		        else 1 + (best(0)(hi) min best(1)(hi-1))
		      }
	  	//for(x<-best)println(x.mkString)
	  	best(0)(S.length-1)
	  }

  test("minLetters (less space)",minLetters _,"s")
}
hw10x.run

//An attempt at O(1) space solution
//I assume my logic is flawed or you would've mentioned
//it as a possible solution in the problem

/*def minLetters(S: String): Int = {
	  if(S== "")return 0
	  val best = Array.fill[Int](2, 2)(0)
	  for (lo <- S.length-1 to 0 by -1)
	    if(lo%2==0)
		    for (hi <- 0 to S.length-1){
		      	if(hi%2==0)
			      	best(0)(0) = {
			        	if (lo >= hi) 0
			        	else if (S(lo) == S(hi)) best(1)(1)
			        	else 1 + (best(1)(0) min best(0)(1))
			     	}
			     else if(hi%2==1)
			     	best(0)(1) = {
			        	if (lo >= hi) 0
			        	else if (S(lo) == S(hi)) best(1)(0)
			        	else 1 + (best(1)(1) min best(0)(0))
			     	}
			}
		else if(lo%2==1)
		    for (hi <- 0 to S.length-1){
		      if(hi%2==0)
			      best(1)(0) = {
			        if (lo >= hi) 0
			        else if (S(lo) == S(hi)) best(0)(1)
			        else 1 + (best(0)(0) min best(1)(1))
			      }
			  else if(hi%2==1)
			  	best(1)(1) = {
			        if (lo >= hi) 0
			        else if (S(lo) == S(hi)) best(0)(0)
			        else 1 + (best(0)(1) min best(1)(0))
			      }
		  }
	  	//for(x<-best)println(x.mkString)
	  	if(S.length%2==0) best(0)(1)
	  	else best(0)(0)
	  }*/