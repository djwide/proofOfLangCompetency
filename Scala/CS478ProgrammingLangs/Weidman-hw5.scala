// CS478: Homework 5
object hw5 extends eecs.cs478 {

  def userName = "David Weidman"

  import eecs.regexp._
  import scala.util.Random
  import eecs.enfa.{ENFA,EState}
  import eecs.dfa.{DFA,DState}
  
	//The textbook was terribly unhelpful
	//I think I understand the layout (black boxes) work
	//just not how to make the "links"
  def compile(reg: RegExp): ENFA = {
    ???
  }

  def accepts(enfa: ENFA, input: String): Boolean = {
    ???
  }

  def randRegExp(n: Int, letters: String): RegExp = {
    val x = Random.nextInt(3)
	val y = Random.nextInt(4)
	val i= Random.nextInt(letters.length)
	val i2= Random.nextInt(letters.length)
	if (x==0){
		if (n==1){
			if(y==0) return Alt(Letter(letters(i)),Letter(letters(i2))) 
			if(y==1) return Alt(Epsilon, Epsilon) 
			if(y==2) return Alt(Epsilon,Letter(letters(i))) 
			if(y==3) return Alt(Letter(letters(i)),Epsilon)
		}
		else{	
			if(y==0) return Alt(Letter(letters(i)),randRegExp(n-1, letters)) 
			if(y==1) return Alt(randRegExp(n-1, letters),Letter(letters(i))) 
			if(y==2) return Alt(Epsilon,randRegExp(n-1, letters)) 
			if(y==3) return Alt(randRegExp(n-1, letters),Epsilon)
		}
	}
	if (x==1){
		if (n==1){
			if(y==0) return Concat(Letter(letters(i)),Letter(letters(i2))) 
			if(y==1) return Concat(Epsilon, Epsilon) 
			if(y==2) return Concat(Epsilon,Letter(letters(i))) 
			if(y==3) return Concat(Letter(letters(i)),Epsilon)
		}
		else{	
			if(y==0) return Concat(Letter(letters(i)),randRegExp(n-1, letters)) 
			if(y==1) return Concat(randRegExp(n-1, letters),Letter(letters(i))) 
			if(y==2) return Concat(Epsilon,randRegExp(n-1, letters)) 
			if(y==3) return Concat(randRegExp(n-1, letters),Epsilon)
		}
	}
	if (x==2){
		if(n==1){
			if(y%2==0) return Star(Epsilon) 
			if(y%2==1) return Star(Letter(letters(i)))
		}
		else return Star(randRegExp(n-1,letters))	
	}
	return Epsilon
  }
  import eecs.dfa.{DFA,DState}
  import scala.collection.immutable.Queue
  def minimize(dfa: DFA): (DFA, Int) = {
    //step 1 from 2.6
	var stateSet= Set.empty[DState]
	val tempQ= Queue[DState]()
	stateSet= stateSet.union(Set(dfa.start))
	tempQ.enqueue(dfa.start)
	while(!(tempQ.isEmpty))	tempQ.dequeue._1.transition.foreach(s=> stateSet= stateSet.union(Set(s._2)))
	//2
	val pairs= stateSet.subsets(2).toList
	val trueList= pairs.map(x=>if(x.toList(0).accepting==x.toList(1).accepting) true else false)//true= disagree
	var truthMap= Map(pairs(0)->trueList(0))
	var c=1
	while(c< pairs.length){		//probably a smarter way to do this
	  truthMap= truthMap+(pairs(c)-> trueList(c))
	  c= c+1
	}
	/*I gave up at this point because I was getting a mystery 
	  out of bounds exception from line 121*/
	//3
	/*
		for( pear<- truthMap){
			if(pear._1==false & helper(pear._0,pear._1, truthMap)==true)
				pear._1==true
		}
		def helper(d1:DState, d2:DState, tMap: Map[(DState,DState)->Boolean]):Boolean={
		  val charIntersection= d1.transition.intersection(d2.transition) //would need to make set from trans._0
		  for (char<- charIntersection){
		    if(tMap((d1(char),d2(char))))
				return true
		  false
		  }
		}
		//add a stopper condition
		
		for(temp<-truthMap)
			if(temp._1==false)
			
		
	*/
	  
	(dfa, 1)
  }
  //crawler
  //cycle through and compare

  ignoretest("compile",compile _,"reg")
  ignoretest("accepts",accepts _,"enfa","input")
  test("minimize",minimize _,"dfa")
}
hw5.run

