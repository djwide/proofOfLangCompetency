//Prob A - primesCracker

def primesCracker(x:Int): (Int,Int) = {
  var y = x
  var i = 2
  var c = true
  var p1 = 0
  var p2= 0
  while(c){
    print("x")
    if (y%i==0){
      var p1 = i
      y= y/i
      c= false
    }
    else i+=1
  }
  while (!c){
    if (y%i==0){
      var p2 = i
      y= y/i
      c= true
    }
    else i+=1
  }
  (p1,p2)
}

//Prob B - mulesMilitia
/*
def mulesMilitia (soldiers:Int): Int = {
  //S+(m+10/10)+m/mule<5
  //mules/md<10
  val mDriver= (mules+10)/10 
}
*/
//Prob C - roboMower
/*
def roboMower(time:Int): (Int,Int) = {
  ???
}
*/

// Test runners
// Run testA to test primesCracker, testB to test mulesMilitia
// and testC to test roboMower
/*
def testA {
  println("Testing primesCracker(num):")
  var count = 0
  for (line <- io.Source.fromFile("a.tests").getLines) {
    count += 1
    val Array(num,p1,p2) = line.trim.split(" ").map(_.toInt)
    val expectedAnswer = (p1, p2)
    val actualAnswer = primesCracker(num)
    if (actualAnswer == expectedAnswer) {
      print(".")
      if (count % 75 == 0) println
    }
    else {
      println
      println(s"Failed test #$count: num=$num")
      println(s"Expected answer $expectedAnswer, but you answered $actualAnswer.")
      return
    }
  }
  println
  println(s"Passed all $count tests.")
}

def testB {
  println("Testing mulesMilitia(soldiers):")
  var count = 0
  for (line <- io.Source.fromFile("b.tests").getLines) {
    count += 1
    val Array(s,expectedAnswer) = line.trim.split(" ").map(_.toInt)
    val actualAnswer = mulesMilitia(s)
    if (actualAnswer == expectedAnswer) {
      print(".")
      if (count % 75 == 0) println
    }
    else {
      println
      println(s"Failed test #$count: soldiers=$s")
      println(s"Expected answer $expectedAnswer, but you answered $actualAnswer.")
      return
    }
  }
  println
  println(s"Passed all $count tests.")
}

def testC {
  println("Testing roboMower(time):")
  var count = 0
  for (line <- io.Source.fromFile("c.tests").getLines) {
    count += 1
    val Array(t,x,y) = line.trim.split(" ").map(_.toInt)
    val expectedAnswer = (x,y)
    val actualAnswer = roboMower(t)
    if (actualAnswer == expectedAnswer) {
      print(".")
    }
    else {
      println
      println(s"Failed test #$count: time=$t")
      println(s"Expected answer $expectedAnswer, but you answered $actualAnswer.")
      return
    }
  }
  println
  println(s"Passed all $count tests.")
}

*/

