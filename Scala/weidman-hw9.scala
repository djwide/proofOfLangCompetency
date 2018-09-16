// CS385 Homework 9
object hw9 extends eecs.cs385 {
  def userName = "David Weidman"

  def costToFillTank(price: Int, distance: Int): Int = {
    // price = price in cents per gallon of gas (265 means $2.659/gallon) 
    // distance = miles driven since last fill-up
    // returns cost in cents
	 ((price*10+9)*distance+299)/300
  }

  //I can only trace through the code so many times and testing
  //with this many named variables gets tiresome very quickly
  def minGasCost(price: Array[Int], distance: Array[Int]): Int = {
    val distLen= distance.length
    val pLen= price.length
    val MAXREACH = 450
    val best4SP= Array.fill(distLen)(-1)
    def bestDecisionAtStation(stationNo: Int, dist:Int):Int={
      if(stationNo==pLen) 0  //back home
      else if(best4SP(stationNo)== -1){
        var ind= stationNo+1
        var distTraveled= dist
        var bestPrice= costToFillTank(price(stationNo),distTraveled) + bestDecisionAtStation(ind,distance(ind))
        var indList= List[Int]()
        while(ind<= pLen&& distTraveled+distance(ind)<= MAXREACH){
          indList= indList:+ind//dependent on dists between stations not n
          //assumed to be small number therefore constant even if appending
          distTraveled = distance(ind)+distTraveled
          ind= ind+1
        }
        distTraveled = distance(stationNo)
        for(x <- indList){
          distTraveled= distance(x)+distTraveled
          bestPrice= bestDecisionAtStation(x, distTraveled) min bestPrice
        }
        best4SP(stationNo)=bestPrice
        bestPrice
      }
      else best4SP(stationNo)
    }
    bestDecisionAtStation(0,distance(0))
  }

  test("costToFillTank",costToFillTank _,"price","distance")
  test("minGasCost",minGasCost _,"price","distance")
}
hw9.run
