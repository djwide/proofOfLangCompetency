/*

	Each initiated element will come with one credit
	enqueue/ VIP will be store 1 credit with element
	while dequeue/ iDec.. will also take the credit
	from the dequed element*/

class awesomeQueue(l:List[Int]){
	var f= new scala.collection.mutable.Stack[Int]
	var b= new scala.collection.mutable.Stack[Int]
	for(x<- l) b.push(x)

	//1 is suffient.  always O(1)
	def enqueue(n: Int)={
		b.push(n)
	}

	//subtract 1.  can take as much as n credits.
	// will have enough because additional computation
	//will -replenish- the credits
	def dequeue:Int={
		if(f.isEmpty)
			while(!b.isEmpty)
				f.push(b.pop)
		f.pop
	}

	//1 is suffient.  always O(1)
	def VIP(n: Int)={
		f.push(n)
	}

	//subtract 1.  can take as much as n credits.
	// will have enough because additional computation
	//will -replenish- the credits
	def iDecidedTheLineWasTooLongSoIChangedMyMindAndLeft:Int={
		if(b.isEmpty)
			while(!f.isEmpty)
				b.push(f.pop)
		b.pop
	}
	def size:Int= f.size+b.size
}

var passCount= 0
val aQ= new awesomeQueue(List())
aQ.enqueue(5)
aQ.enqueue(6)
aQ.enqueue(7)
aQ.VIP(4)
aQ.VIP(3)
aQ.VIP(2)
aQ.VIP(1)
if(aQ.f.mkString== "1234"){
	passCount=passCount+1
	print(".")
}
else println('\n'+"X")
if(aQ.b.mkString== "765"){
	passCount=passCount+1
	print(".")
}
else println('\n'+"X")
if(aQ.size==7){
	passCount=passCount+1
	print(".")
}
else println('\n'+"X")
if(aQ.iDecidedTheLineWasTooLongSoIChangedMyMindAndLeft==7){
	passCount=passCount+1
	print(".")
}
else println('\n'+"X")
if(aQ.iDecidedTheLineWasTooLongSoIChangedMyMindAndLeft==6){
	passCount=passCount+1
	print(".")
}
else println('\n'+"X")
if(aQ.iDecidedTheLineWasTooLongSoIChangedMyMindAndLeft==5) {
	passCount=passCount+1
	print(".")
}
else println('\n'+"X")
if(aQ.iDecidedTheLineWasTooLongSoIChangedMyMindAndLeft==4){
	passCount=passCount+1
	print(".")
}
else println('\n'+"X")
if(aQ.b.mkString== "321") {
	passCount=passCount+1
	print(".")
}
else println('\n'+"X")
aQ.VIP(0)
if(aQ.dequeue==0) {
	passCount=passCount+1
	print(".")
}
else println('\n'+"X")
if(aQ.dequeue==1) {
	passCount=passCount+1
	print(".")
}
else println('\n'+"X")
if(aQ.f.mkString== "23") {
	passCount=passCount+1
	println(".")
}
else println('\n'+"X")
println(passCount+ " :passed out of 11")
