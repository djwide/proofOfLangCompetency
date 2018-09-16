//David Weidman 

// CS478: Homework 4


/* 

<base>=  <letter>
		|<base>*
		|<base>+
		|<base>?
		|'('<base>')'
		|<base>'|'<notch>
		|<notcon><base>
		|-
		
<notch>= <letter>
		|<base>*
		|<base>+
		|<base>?
		|'('<base>')'
		|<base><base>
		|-

<notcon>=   <letter>
		|<base>*
		|<base>+
		|<base>?
		|'('<base>')'
		|<base>'|'<base>
		|-


 */
 
 
 
object hw4 extends eecs.cs478 {

  def userName = "David Weidman"

  import eecs.regexp._
  import scala.collection.mutable.Stack
  
  def parser(text: String): Option[RegExp] = text match{
    case "-"=> Some(Epsilon) 
	case c if (c.length==1 &c(0).isLetter) => Some(Letter(c(0)))
	case c if !(c(0).isLetter|c(0)=='(') => None
	case c if c(0) == '('=> {
		if (parenKiller(text)==None) None
		else {
			val (inPar, nextStr)= parenKiller(text).get
			if (nextStr=="oneset!") Some(parser(inPar).get)
			else if(nextStr(0)== '|') Some(Alt(parser(inPar).get, parser(nextStr).get))			
			else if(nextStr(0)== '*') Some(Concat(Star(parser(inPar).get), parser(nextStr).get))		
			else Some(Concat(parser(inPar).get, parser(nextStr).get))
		}
	}
	case s if (s(1) != '|'&s != '*')=>Some(Concat(parser(text.substring(0,s.length-1)).get,Letter(s(s.length-1)))) 
	// ^^ defaults to left ass. b/c it evaluates one char at a time
	case s if (s(1)== '|') => Some(Alt(Letter(s(0)),parser1(text.substring(2)).get))		//notch
	case s if (s(1)=='*')=>Some(Star(Letter(s(0))))
  }
  
    def parser1(text: String): Option[RegExp] = text match{				//noChoiceGrammar
    case "-"=> Some(Epsilon) 
	case c if (c.length==1 &c(0).isLetter) => Some(Letter(c(0)))
	case c if !(c(0).isLetter|c(0)=='(') => None
	case c if c(0) == '('=> {
		if (parenKiller(text)==None) None
		else {
			val (inPar, nextStr)= parenKiller(text).get
			if (nextStr=="oneset!") Some(parser(inPar).get)
			else if(nextStr(0)== '|') Some(Alt(parser(inPar).get, parser(nextStr).get))			
			else if(nextStr(0)== '*') Some(Concat(Star(parser(inPar).get), parser(nextStr).get))		
			else Some(Concat(parser(inPar).get, parser(nextStr).get))
		}
	}
	case s if (s(1) != '|'&s != '*')=>Some(Concat(parser(text.substring(0,s.length-1)).get,Letter(s(s.length-1)))) 
	case s if (s(1)=='*')=>Some(Star(Letter(s(0))))
  }


  
  def parenKiller(str: String): Option[(String,String)]={ //not "ParentKiller"
	val parStack = new Stack[Char]
	var iC= 0
	for(x <- str){
		if(x== '(') parStack.push(x)
		if(x==')' & !parStack.isEmpty) parStack.pop
		else if(x==')' & parStack.isEmpty) return None
		iC=iC+1
		if (parStack.isEmpty &str.length ==iC) return Some(str.substring(1,iC-1), "oneset!")
		if (parStack.isEmpty) return Some(str.substring(1,iC-1), str.substring(iC))
	}
	None
  }

  test("parser",parser _,"text")
}
hw4.run



