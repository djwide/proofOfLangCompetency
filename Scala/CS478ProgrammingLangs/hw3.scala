// CS478: Homework 3 (Easier Version)
object hw3 extends eecs.cs478 {

  def userName = "david_weidman"

  import eecs.regexp._
  import eecs.dfa.{DFA,DState}
    
  def unparse(reg: RegExp): String = reg match{
	case Letter(c)=>c.toString
	case Alt(r1,r2)=>"("+unparse(r1)+"|"+unparse(r2)+")"
	case Concat(r1,r2)=> "("+unparse(r1)+unparse(r2)+")"
	case Star(r)=> "("+unparse(r)+"*"+")"
  }

  /*def matches(reg: RegExp, input: String): Boolean = {
	str= unparse(str)
	for (x-> input){
		
	}
  }

  def subMatch(regS: String, input: String): Int={
	
	if (regS==input){
	1
	}
	else if (regS==""
	else 
  }*/
  
  def accepts(dfa: DFA, input: String): Boolean ={
    if (input==null && dfa.start.accepting== true ) true
	else if (input==null && dfa.start.accepting == false ) false
	else {
		dfa.start(input(0))
		accepts(dfa, input.substring(1))
	}
  }
    
  //test("unparse",unparse _,"reg")
  //ignoretest("matches",matches _,"reg","input")
  //test("accepts",accepts _,"dfa","input")
}
hw3.run


