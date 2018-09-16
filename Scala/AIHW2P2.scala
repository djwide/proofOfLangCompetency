
val pointSet= Set((Array(2,1,6,9,4,4,0,0),Array(0,5,0,0,9,5,7,0)),
	(Array(2,5,1,6,6,6,4,8),Array(0,9,6,1,7,4,5,1)),
	(Array(2,7,3,8,4,3,6,5),Array(1,2,5,7,3,3,2,3)),
	(Array(1,9,0,8,4,5,6,5),Array(1,0,3,8,5,5,0,8)),
	(Array(2,0,9,7,9,5,1,2),Array(0,8,6,7,8,6,9,1)),
	(Array(2,2,1,9,1,2,2,8),Array(1,0,5,8,5,1,5,9)),
	(Array(1,4,7,0,6,8,1,2),Array(0,3,8,0,7,9,3,5)),
	(Array(1,0,1,7,5,7,8,9),Array(0,8,6,6,0,0,4,9)),
	(Array(2,1,3,6,3,9,9,4),Array(1,1,0,3,6,9,9,5)),
	(Array(1,5,5,4,8,6,0,4),Array(0,1,7,5,9,9,7,1)),
	(Array(1,5,6,7,1,2,4,0),Array(0,8,1,8,0,8,9,4)),
	(Array(0,2,3,3,7,5,8,5),Array(0,5,5,9,4,8,1,4)),
	(Array(1,8,4,1,8,3,9,8),Array(0,5,5,7,5,8,5,9)),
	(Array(2,5,0,4,5,6,8,6),Array(0,0,1,2,2,5,5,1)),
	(Array(1,6,1,4,2,6,3,7),Array(1,2,2,0,4,2,8,0)),
	(Array(1,8,5,8,3,0,7,6),Array(0,2,0,9,7,0,2,9)),
	(Array(2,6,2,5,9,6,3,9),Array(1,1,0,3,8,0,7,1)),
	(Array(2,5,8,3,7,5,5,9),Array(1,0,3,0,7,9,2,5)),
	(Array(0,5,7,9,5,1,5,2),Array(0,4,6,5,5,8,3,5)),
	(Array(2,3,1,1,2,2,8,0),Array(1,0,0,8,8,3,9,1)),
	(Array(1,7,9,6,4,1,0,4),Array(0,8,0,8,5,0,4,2)),
	(Array(0,0,6,1,8,4,6,2),Array(0,8,7,7,5,3,2,5)),
	(Array(0,2,5,1,3,2,0,8),Array(1,5,4,6,1,4,0,1)),
	(Array(2,3,4,8,9,8,5,4),Array(0,1,3,4,3,9,9,7)),
	(Array(2,4,9,1,4,2,6,3),Array(0,9,3,5,3,8,4,5)))
//Again, too bad it came to this.  ^^

val ITER= 10000
val r= scala.util.Random


def doubToArr(doub:Double):Array[Int]={
	var d= doub
	val ret= Array(0,0,0,0,0,0,0,0)
	for(x <- 0 to 7){
		ret(x)= (doub%math.pow(10,4-x)/math.pow(10,3-x)).toInt
	}
	ret
}

def getSumDistances(x0:Array[Int],y0:Array[Int],x1:Array[Int],y1:Array[Int]):Double={
	var sum=0.0
	for(point<-pointSet)
		sum= sum+(dist(point,(x0,y0)) min dist(point,(x1,y1)))
	sum
}

def dist(from:(Array[Int], Array[Int]), to:(Array[Int],Array[Int])):Double={
	val (x0,y0,x1,y1)=(arrToDouble(from._1),arrToDouble(from._2),arrToDouble(to._1),arrToDouble(to._2))
	math.pow(math.pow(x0 - x1, 2) + math.pow(y0- y1, 2),0.5).toDouble
}

def arrToDouble(input:Array[Int]):Double={
	var (ind, ret) = (0, 0.0)
	for (ten <- 3 to -4 by -1){
		ret= ret+input(ind)*math.pow(10,ten)
		ind= ind+1
	}
	ret.toDouble
}

def makeChildren(p0: Array[Array[Int]],p1: Array[Array[Int]], bias:Int):List[Array[Array[Int]]]={
	val p0New0= p0(0).slice(0,bias)++ p1(0).slice(bias, 8)
	val p0New1= p1(0).slice(0,8-bias)++ p0(0).slice(8-bias, 8)
	val p1New0= p0(1).slice(0,bias)++ p1(1).slice(bias, 8)
	val p1New1= p1(1).slice(0,8-bias)++ p0(1).slice(8-bias, 8)
	val p2New0= p0(2).slice(0,bias)++ p1(2).slice(bias, 8)
	val p2New1= p1(2).slice(0,8-bias)++ p0(2).slice(8-bias, 8)
	val p3New0= p0(3).slice(0,bias)++ p1(3).slice(bias, 8)
	val p3New1= p1(3).slice(0,8-bias)++ p0(3).slice(8-bias, 8)
	List(Array(p0New0,p1New0,p2New0,p3New0),Array(p0New1,p1New1,p2New1,p3New1))
}

def mutate(gen:List[Array[Array[Int]]]): List[Array[Array[Int]]]={
	for (mem <- gen){
		for (coord <- mem){
			var i= 0
			for(dig<- coord){
				val rand= r.nextInt(100)
				if(rand >98 && i==0) coord(i)= r.nextInt(3)
				else if(rand >92) coord(i)= r.nextInt(10)
				i=i+1
			}
		}
	}
	gen
}

var genList= List(Array(Array(1,5,0,0,0,0,0,0),Array(0,5,0,0,0,0,0,0),Array(1,5,0,0,0,0,0,0),Array(0,5,0,0,0,0,0,0)),
	Array(Array(0,0,0,0,0,0,0,0),Array(0,0,0,0,0,0,0,0),Array(2,0,0,0,0,0,0,0),Array(1,0,0,0,0,0,0,0)),
	Array(Array(2,0,0,0,0,0,0,0),Array(1,0,0,0,0,0,0,0),Array(0,0,0,0,0,0,0,0),Array(0,0,0,0,0,0,0,0)),
	Array(Array(1,5,0,0,0,0,0,0),Array(0,5,0,0,0,0,0,0),Array(1,5,0,0,0,0,0,0),Array(0,5,0,0,0,0,0,0)))//genetically diverse


for(x <- 0 to ITER-1){
	val sumList= genList.map(a=> getSumDistances(a(0),a(1),a(2),a(3)))
	var sumMap= sumList.zip(genList)
	sumMap= sumMap.sortBy(_._1)
	
	val p0= sumMap(0)
	val p1= sumMap(1)
	val scalar= ((p0._1*8)/(p0._1+p1._1)+1).toInt
	val newGen= List(p0._2, p1._2) ++ makeChildren(p0._2,p1._2, scalar)//sumMap.unzip._1.slice(0,2)
	genList= mutate(newGen)
}
val sumList= genList.map(a=> getSumDistances(a(0),a(1),a(2),a(3)))
var sumMap= sumList.zip(genList)
sumMap= sumMap.sortBy(_._1)
println("Distance: " + sumMap(0)._1.toString)
for(x <- sumMap(0)._2)
	println(x.mkString)
/*
	StateEncoding- ArrayInt representations of doubles.  I coudl change them one digit at a time although I restricted the first to
		0,1,2
	PopSize- I only did 4.  Shouldn't matter with high iterations but may not be most efficient.  Two parents from the previous generation
		and the two children
	Selction method- I chose the 2 most fit of the 4 per generation.  The more fit carried on it's genes proprtionally
	crossover- makeChildren() gives fit parent a more-than-proprtional number of the integer traits front to back and back to front
	mutation- mutates each of the individual traits.  higher likelihood for trailing digits.  Could make it gradient the whole way if I had more time.
	stopping criteria- keep going to ITER.  ITER should be a reasonalbe length of time
*/
