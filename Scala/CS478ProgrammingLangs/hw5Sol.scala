// CS478: Homework 5
object hw5 extends eecs.cs478 {

  def userName = "David Weidman"
  
  import eecs.regexp._
  import eecs.enfa.{ENFA,EState}
  import eecs.dfa.{DFA,DState}

  def compile(reg: RegExp): ENFA = {
    def comp(reg: RegExp): (EState, EState)= reg match{
		case Epsilon =>{
			val(in,out)= (new EState, new EState)
			in+=(out)
			(in,out)
		}
		case Letter(c)=>{
			val (in, out)= (new EState, new EState)
			in +=(c-> out)
			(in,out)
		}
		case Alt(r1,r2)=>{
			val (in1,out1)= comp(r1)
			val (in2,out2)= comp(r2)
			val (in,out)= (new EState, new EState)
			in += in1
			in += in2
			out1+= out
			out2+= out
			(in, out)
		}
		case Concat(r1,r2)=>{
			val (in1,out1)= comp(r1)
			val (in2,out2)= comp(r2)
			val (in,out)= (new EState, new EState)
			in += in1
			in += in2
			out1+= in2
			out2+= out
			(in, out)
		}
		case Star(r)=>{
			val (in1,out1)= comp(r)
			val (in,out)= (new EState, new EState)
			in+=in1
			out1+=in1
			out1+=out
			(in,out)
		}
	}
	val(in,out)= comp(reg)
	out.accepting=true
	ENFA(in)
		
  }
  
  def closure(set:Set[EState]): Set[EState]={
	var states= Set.empty[EState]
	def dfs(s: EState){
		if(!states(s)){
			states+=s
			s.emptyTransitions.foreach(dfs)
		}
	}
	set.foreach(dfs)
	states
  }
  
  
  def accepts(enfa: ENFA, input: String): Boolean = {
    var states= Set(enfa.start)
	for (c<-input){
		states= closure(states).flatMap(s=>s(c))
	}
	closure(states).exists(_.accepting)
  }
	
  def randRegExp(n: Int, letters: String): RegExp = {
    ???
  }

  def minimize(dfa: DFA): (DFA, Int) = {
    ???
  }

  test("compile",compile _,"reg")
  test("accepts",accepts _,"enfa","input")
  ignoretest("minimize",minimize _,"dfa")
}
hw5.run

