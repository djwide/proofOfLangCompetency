// CS385 Homework 5 Extra Credit
object hw5 extends eecs.cs385 {
  def userName = "DJWeidman"

  // *** insert big-O here ***
  def albertsShare(loot: Array[Int]): Int = {
	 // loot.length >= 3 and each item is positive
	 //albert will always get the lowest third
	 //we want the three to be as even as possible
	 //albert gets floor of sum/3 or in cs terms sum/3
	 var (bestDistance, sum, ret) = (255 ,0, 0)
	 val total = loot.sum  //n
	 val target= total/3
	 for (memb <- loot){
	 	sum= sum + memb
	 	var otherside= total- sum
	 	var (dist1, dist2)= (target- sum,target-otherside)
	 	if (dist1 < bestDistance && dist1 >=0) {
	 		bestDistance= dist1
	 		ret= sum
	 	}
	 	else if(dist2 < bestDistance && dist2>=0) {
	 		bestDistance= dist2
	 		ret= otherside
	 	}
	 }
	 ret
  }
  // I don't see why 10 logically is wrong
  // Overall not a very good alg.  Good for giving 
  //good answers just not correct ones
  test("albertsShare",albertsShare _,"loot")
}
hw5.run

