//David Weidman

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
	for {
		-loops through all combinations of input substrings
		-passes the substring to submatch along with
		entire (remaining) regex. 
		-after subMatch occurs eliminate corresponding part 
		of regex if suitable and substring of input.
		Helper function reassigns input and reg
	}
  }

  def helper(reg: RegExp, input: String, match: String): (String, String)={
	differentiate between ands/ors and stars in terms of whether or not
	to delete regex term
	hand wave
	profit
	return the new input and reg ex to be reassigned
  }
  
  def subMatch(regS: String, input: String): Boolean={
	strip parentheses and operator and do basic string matching
  }*/
  
  def accepts(dfa: DFA, input: String): Boolean ={
    if (input==null && dfa.start.accepting== true ) true
	else if (input==null && dfa.start.accepting == false ) false
	else {
		dfa.start(input(0))
		accepts(dfa, input.substring(1))
	}
  }
    
  test("unparse",unparse _,"reg")
  //ignoretest("matches",matches _,"reg","input")
  test("accepts",accepts _,"dfa","input")
}
hw3.run


