//val lines = scala.io.Source.fromFile("QAP flow data.txt").mkString.split("-")
val flowArray=Array(Array(0),Array(10,0),Array(0,1,0),Array(5,3,10,0),Array(1,2,2,1,0),Array(0,2,0,1,3,0),Array(1,2,2,5,5,2,0),Array(2,3,5,0,5,2,6,0),Array(2,2,4,0,5,1,0,5,0),Array(2,0,5,2,1,5,1,2,0,0),Array(2,2,2,1,0,0,5,10,10,0,0),Array(0,0,2,0,3,0,5,0,5,4,5,0),Array(4,10,5,2,0,2,5,5,10,0,0,3,0),Array(0,5,5,5,5,5,1,0,0,0,5,3,10,0),Array(0,0,5,0,5,10,0,0,2,5,0,0,2,4,0))
//I'm ashamed that it camme to that ^^
val TRIPLENGTH= 14
val ITER=1000

var currLayout= Array(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14)//start state doesn't matter with high iter
var minCost= 99999
val r = scala.util.Random
def confCost(layout: Array[Int]): Int={
	var sum=0
	for (x <-0 to TRIPLENGTH-1){
		val dep1= layout(x)
		for(y<- 0 to TRIPLENGTH-1){
			val dep2= layout(y)
			val big= dep1 max dep2
			val small= dep1 min dep2
			val flow= flowArray(big)(small)
			val man= routeManhattan(x,y)
			sum= sum+flow*man
		}
	}	
	sum
}

def routeManhattan(n:Int, m:Int):Int={
	val big= m max n
	val small= m min n//abs
	big/5-small/5+math.abs(big%5-small%5)
}

def getNewArray(n: Int): Array[Int]={
	val tempArray= Array.ofDim[Int](TRIPLENGTH+1)
	Array.copy(currLayout,0,tempArray,0,TRIPLENGTH+1)
	for(x<- 0 to n-1){
		val ind1= r.nextInt(TRIPLENGTH)
		val ind2= r.nextInt(TRIPLENGTH)
		val t= tempArray(ind1)
		tempArray(ind1)= tempArray(ind2) 
		tempArray(ind2)= t
	}
	tempArray
}
var totalMin= 2000
for (x <- 0 to ITER){
	val temper= (x*14)/ITER+1//temperature- number of switches
	val gna=getNewArray(14-temper)
	val cost= confCost(gna)
	val accep= .597*math.exp(((minCost-cost)*temper* -.003542).toFloat)
	//constants are diff=50, temper=14 -> 5% chance of movement, temper=1-> 50% chance of movement
	if(cost < minCost||r.nextDouble> accep){
		println(cost)
		minCost=cost
		currLayout=gna
	}
}
println(currLayout.mkString(" "))
println(minCost/2)
print(totalMin)// the annealing answer is given above however

/*
My best value was 1026 (515) so I must have misunderstood the value attribution function (or made a typo.)
 My annealing solutions (no memory of total min) woul generally be slighhtly higher arounf 1100.  I attribute this to 
 the necessity of making relatively drastic changes based on the nature of the state space.  One swap is a pretty big change.

state encodeing.  Index corresponds to the below locations
0	5	10
1	6	11
2	7	12
3	8	13
4	9	14

Action- generate neighbor by swapping rooms based on the temperature.  14 swap at first and 1 at the end.  14 is overkill
mathematically but i'll leave it for now

-see code body for annealing schedule descriptions

*/

