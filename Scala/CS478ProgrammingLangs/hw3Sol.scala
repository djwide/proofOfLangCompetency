//David Weidman

// CS478: Homework 3 (Easier Version)
object hw3 extends eecs.cs478 {

  def userName = "david_weidman"

  import eecs.regexp._
  import eecs.dfa.{DFA,DState}
    
  def unparse(reg: RegExp): String = reg match{
	case Epsilon=> "-"
	case Letter(c)=>c.toString
	case Alt(r1,r2)=>"("+unparse(r1)+"|"+unparse(r2)+")"
	case Concat(r1,r2)=> "("+unparse(r1)+unparse(r2)+")"
	case Star(r)=> "("+unparse(r)+"*"+")"
  }

  def matches(reg: RegExp, input: String): Boolean = {
	def mat(reg: RegExp, i:Int: Set[Int])= reg match{
	  case Epsilon=> Set(i)
	  case Letter(c)=> 
	  { 
	    if (i<input.length && c==input(i)) Set(i+1)
	    else Set.empty
	  }
	  case Alt(x,y)=> mat(x,i) union mat(y,i)
	  case Concat(x,y)=> mat(x,i).flatMap(j=>mat(y,j))
			//for(j<-mat(x,i); k<-mat(y,j)) yield k
	  case Star(x)=>
		for(j<- mat(x,i); l<-mat(reg,j)) yield k )+i
	}
	mat(reg,0) contains input.length
  }
	
  
  
  
  def accepts(dfa: DFA, input: String): Boolean ={
    var state= dfa.start
	for(c<-input){
	  state= state.transition.getOrElse(c,return false)
	}
	state.accepting
  }
    
  test("unparse",unparse _,"reg")
  //ignoretest("matches",matches _,"reg","input")
  test("accepts",accepts _,"dfa","input")
}
hw3.run


