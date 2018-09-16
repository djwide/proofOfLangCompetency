// CS385 Homework 1
object hw1 extends eecs.cs385 {
  def userName = "David Weidman" // fill in your name here

  // O(n^2)
  def bestSoundbite(ratings: Array[Int]): Int = {
    if (ratings.isEmpty) return 0
    else{
      var (max, sum)= (0,0)
      val len= ratings.length
      for(testSize <- 1 to len)
        for(startInd <- 0 to len-testSize){
          sum= ratings.slice(startInd, startInd+testSize).sum
          if (sum> max) max= sum
        }
      max
    }
  }

//ans
/*def bestSoundbite(ratings: Array[Int]): Int = {
    var bestEndingHere= 0
    var bestOverall= 0
    for (x<-ratings){
      bestEndingHere= (bestEndingHere+x) max 0
      bestOverall= bestOverall max bestEndingHere
    }
  }
  */

  def grade(reg: String, xc: String): Int = {
    var (sum,rE,rN, rW, rS, xE, xW, xS)= (810,0,0,0,0,0,0,0)
    for(regLet <- reg)
      if (regLet == 'E') rE=rE+1
      else if (regLet == 'W') rW=rW+1
      else if(regLet== 'N') rN=rN+1
      else rS= rS+1
    for(xcLet <- xc)
      if (xcLet == 'E') xE=xE+1
      else if(xcLet== 'W') xW=xW+1
      else if(xcLet== 'S') xS= xS+1
    rN = rN*2
    rS = rS*2
    rW = rW*2
    rE= rE*2
    while(rN>0&& xW>0){//The crux of my issue is not subtracting 
      rN= rN-1        //them in pairs. I've learned from this 
      rW= rW+1        //problem however that xc is most valuable
      xW= xW-1        // in the N-W range per unit time
    }
    while(rN>0 && xS>0){
      rN= rN-1
      rW= rW+1
      xS= xS-1
    }
    while(rN>0 && xE>0) {
      rN= rN-1
      rW= rW+1
      xE= xE-1
    }
    while (rW>0 && xS>0){
      rW=rW-1
      rS= rS+1
      xS=xS-1
    }
    while (rW>0 && xE>0){
      rW=rW-1
      rS= rS+1
      xE= xE-1
    }
    while (rS>0  & xE>0){
      rS= rS-1
      rE= rE+1
      xE= xE-1
    }
    rN = (rN+1)/2
    rW = (rW+1)/2
    rE= (rE)/2
    (sum+rE*10-rW*10-rN*25)/10
  }

  test("bestSoundbite",bestSoundbite _,"ratings")
  test("grade",grade _,"reg","xc")
}
hw1.run