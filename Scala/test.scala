val lines= scala.io.Source.fromFile("cities_data.txt").getLines.toArray
val lines2= Array.ofDim[Array[Double]](lines.length)
for(x<- lines2)
	println(x)
var c= 0
for (x <- lines){
	x.replace(",","")
	print(x)
	val y=x.split("\t")
	print(y.mkString)
	lines2(c) = Array(y(1).toDouble,y(2).toDouble)
	c=c+1
}
for(x <- lines2){
	println(x)
}

