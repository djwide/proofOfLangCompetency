//David Weidman 

// CS478: Homework 4


/* 
	R3= R2'|'R3
		|R2
		
	R2=R1+
	
	R1= R0('*'|'+'|'?')*
		
	R0= '-'
		|L
		|'('R3')'
	
 */
 
 
 
object hw4 extends eecs.cs478 {

  def userName = "David Weidman"

  import eecs.regexp._
  import scala.collection.mutable.Stack
  
  def parser(text: String): Option[RegExp] = text match{
	
	def parse3(list:List[Char]): Option[(RegExp, List[Char])]
		parse2(list) match{
			case Some(e,'|'+: rest)=>{
				parse3(rest) match{
					case Some(e2, after)=> Some(Alt(e,e22), after))
					case _=>None
				}
			}
			case answer=> answer
		}
	def parse2(list:List[Char]): Option[(RegExp, List[Char])]={
		parse1(list) match{
			case Some(e0, rest0))=>
		}
	}
	
	def parse1(list:List[Char]): Option[(RegExp, List[Char])]={
		parse0(list) match{
			case Some((e0, rest))=>{
				var e=e0
				var rest= rest0
				while("*+?".contains(rest.head)){
					if(rest.head=='+')e= Star(e)
					else if(rest.head=='*')e=Star(e)
					else e= Alt(e,Epsilon)
					rest = rest.tail
				}
			}
		}
		
	}
	
	def parse0(list:List[Char]): Option[(RegExp, List[Char])]{
		case '-' +:=>Some((Epsilon, rest))
		case c +: rest if c.isLetter=> Some((Letter(c),rest)) 
		case '(' +: rest =>
			parse3(rest) match{
				case Some((e,')'+:after))=>Some((e,after))
				case _=> None
			}
		case _=> None
		case List()=> 
	}
	
	parse3((text+'#').toList) match{
		case Some((e,List('#')))=> Some(e)
		case_ => None
	}
	
  test("parser",parser _,"text")
}
hw4.run



