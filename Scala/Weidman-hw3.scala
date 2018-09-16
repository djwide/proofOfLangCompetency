// CS385 Homework 3
object hw3 extends eecs.cs385 {
  def userName = "David Weidman"

  // must run in O(n log n) time!
  def maxProfit(price: Array[Int]): Int = {
    // price is non empty, all values are positive
    var (max,dif) = hiLoHelper(price)
    if(dif < 0) 0
    else dif
  }

  def hiLoHelper(price: Array[Int]): Tuple2[Int,Int]={//(max,dif)
    if (price.length==1) (price(0),0)
    else if(price.length == 2 &&price(1)>=price(0)) (price(1),price(1)-price(0))
    else if(price.length == 2)  (price(0), price(1)-price(0))
    else{
      var len= price.length
      var (maxL, difL) = hiLoHelper(price.slice(0,len/2))
      var (maxR, difR) = hiLoHelper(price.slice(len/2,len))
      /*println(maxR)
      println(difR)
      println(maxL)
      println(difL)*/
      if(difR>difL && difR>maxR-(maxL-difL)) (maxR,difR)
      else if(difL>difR && difL > maxR-(maxL-difL)) (maxL,difL)
      //else if(difL< 0) (maxR,maxR-(maxL+difL))
      else (maxR,maxR-(maxL-difL))
    }
  }

  def pachinko(grid: Array[Array[Int]]): Int = {
    //It'll "visit" each spot in combinatorial frequency.  We could 
    //compress it at each layer so there's no redundant recursion
    //I'll wait til "later in the course" to implement this sol
    // grid is square and non-empty, all values are non-negative
    if(grid.length==1 && grid(0).length==1) grid(0)(0) 
    else if (grid.length==1) grid(0).sum
    else if(grid(0).length==1) {
      var sum = 0
      for(i2 <- 0 to (grid.length-1)) sum = grid(i2)(0)+sum
      sum
    }
    else {
      val left= pachinko(grid.drop(1))
      val base = grid(0)(0)
      var c= 0
      for(i<- grid){//had trouble reassigning arrays in foreach
        grid(c)= i.drop(1)
        c= c+1
      }
      val right= pachinko(grid)
      if(right>=left)right+base
      else left +base
    } 
  }
  
  // must run in O(log n) time!
  def middleElement(a: Array[Int], b: Array[Int]): Int = {
    // a and b are both sorted, a.length+b.length is odd
    if(a.isEmpty) return b(b.length/2)
    else if(b.isEmpty) return a(a.length/2)
    var (bigger,smaller)= (a,b)
    if(a.length < b.length) {
      smaller= a
      bigger= b
    }
    var (sLen, bLen) = (smaller.length,bigger.length)  
    var (sMid,bMid)= ((sLen+1)/2,(bLen+1)/2)
    while(sLen>1 && bLen>1){
      if(smaller(sMid)< bigger(bMid)){
        smaller= smaller.slice(sMid, sLen)
        bigger= bigger.slice(0, bLen-sMid)
      }
      else {//if(){
        smaller= smaller.slice(0, sMid)
        bigger= bigger.slice(bLen-(sMid+1), bLen)
      }
      sLen= smaller.length
      bLen = bigger.length
      sMid= (sLen+1)/2
      bMid= (bLen+1)/2 
    }
    if(smaller(0)< bigger(bMid-1)) bigger(bMid-1)
    else if(smaller(0)< bigger(bMid)) smaller(0)
    else bigger(bMid)
  }

  test("maxProfit",maxProfit _,"price")
  import eecs.implicits.TestableGrid
  test("pachinko",pachinko _,"grid")
  testV("middleElement", middleElement _, "a", "b"){
    (a: Array[Int], b: Array[Int], answer: Int) => {
      val combined = (a ++ b).sorted
      assertResult(combined(combined.length/2))(answer)
    }
  }
}
hw3.run