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
    val enfa= ENFA(new EState)
	def enfaConstruct(reg: RegExp, eState: EState): EState= reg match{
		case Epsilon=> {
			eState+= new EState(accepting=true)
			eState
		}
		case Letter(c)=>{
			eState +=(c, new EState(accepting=true))
			eState
		}
		
		/**
		case Alt(r1,r2)=>{
			eState.transition=Map(???->Set(enfaConstruct(r1,new EState)), ??? ->Set(enfaConstruct(r2, new EState)))
			eState
		}
		case Concat(r1,r2)=>{
			eState.transition= Map(???-> Set(enfaConstruct(r1,
						new EState(transition= Map(???->Set(enfaConstruct(r2, new EState)))))))
		
		It's late now and this is gibberish
		*/
		
	}
	enfaConstruct(reg, enfa.start)
	enfa
  }

  def accepts(enfa: ENFA, input: String): Boolean = {
    /*def getEmpties(s: EState): Set[EState]={
		var eSet= Set.empty[EState]
		for (eTrans<- s.emptyTransitions){
			if(!(eSet.contains(eTrans)))eSet= eSet.union(Set(eTrans)).union(getEmpties(eTrans))   //attempt at check for loop
		}
		eSet
	}*/
	//stack overflow
	var stateSet = Set(enfa.start).union(enfa.start.emptyTransitions)//getEmpties(enfa.start))
	for(c<-input){
		var tempSet=Set.empty[EState]
		for(state<- stateSet){
			if (!(state.transition.get(c)== None)){
					tempSet= tempSet.union(state.transition.get(c).get)
					tempSet= tempSet.union(state.emptyTransitions)//getEmpties(state))
			}
		}
		stateSet= tempSet
	}
	for(end<- stateSet) if (end.accepting) return true
	false
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

  def minimize(dfa: DFA): (DFA, Int) = {
    ???
  }

  test("compile",compile _,"reg")
  test("accepts",accepts _,"enfa","input")
  ignoretest("minimize",minimize _,"dfa")
}
hw5.run

