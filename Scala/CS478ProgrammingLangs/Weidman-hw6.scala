// CS478 Homework 6

def userName = "David Weidman"

sealed trait Expr
case class Num(value: Int) extends Expr
case class Var(name: String) extends Expr
case class Plus(left: Expr, right: Expr) extends Expr
case class Minus(left: Expr, right: Expr) extends Expr
case class Equals(left: Expr, right: Expr) extends Expr
case class Less(left: Expr, right: Expr) extends Expr
   
sealed trait Stmt
case class Assign(name: String, expr: Expr) extends Stmt
case class Output(expr: Expr) extends Stmt
case class If(condition: Expr, thenStmt: Stmt, elseStmt: Stmt) extends Stmt
case class While(condition: Expr, body: Stmt) extends Stmt
case class Block(stmts: List[Stmt]) extends Stmt
var env= Map.empty[String,Int] 

def interpret(program: Stmt): List[Int] = {
  var solList= List.empty[Int]
  
  def eval(expr: Expr): Int= expr match{
    case Num(n)=> n
	case Var(x)=> env.getOrElse(x,0)
	case Plus(e1, e2)=> eval(e1) + eval(e2)
	case Minus(e1, e2)=> eval(e1) - eval(e2)
	case Equals(e1, e2)=> {
	  if(eval(e1)==eval(e2))1
	  else 0
	}
	case Less(e1, e2)=>{
	  if(eval(e1) < eval(e2)) 1
	  else 0
	}
  
  }
  def exec(statement: Stmt): Unit = statement match{
	case Assign(name, expr)=> env= env+(name-> eval(expr))
	case Output(expr)=> solList= solList:+eval(expr)
	case If(cond, then, els)=>{			
		if(eval(cond)==1) exec(then)
		else if (els != null) exec(els)
	}
	case While(condition, body)=> while(eval(condition)==1) exec(body)
	case Block(stmts: List[Stmt])=> for(x<- stmts) exec(x)
  }
  exec(program)
  solList
}


println(s"Begin tests for $userName at ${new java.util.Date()}")

def test(program: Stmt,expected: List[Int]) {
   val actual = interpret(program)
   println(actual)
   if (actual == expected) println("Passed.")
   else {
      println(s"""FAILED TEST
  program = $program
  expected $expected
  but got  $actual""")
   }
}

// Include tests below.

test(Output(Less(Num(2),Num(2))), List(0)) // Given
test(While(Less(Var("x"),Num(5)),
           Block(List(Output(Var("x")),
                      Assign("x",Plus(Var("x"),Num(1)))))),
     List(0,1,2,3,4)) // Given
test(If(Less(Var("y"),Num(5)),
           Block(List(Output(Var("y")),
                      Assign("y",Plus(Var("y"),Num(1))))), null),
     List(0)) 
test(If(Less(Num(5),Var("z")),
           Block(List(Output(Var("z")),
                      Assign("z",Plus(Var("z"),Num(1))))), Output(Minus(Num(4),Num(3)))),
     List(1)) 

