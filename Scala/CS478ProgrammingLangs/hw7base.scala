// CS478: Homework 7 Support Code

// *** MAKE NO CHANGES TO THIS CODE***

package hw7

object base {

  //////////////////// ABSTRACT SYNTAX TREES ////////////////////
  // Abstract syntax trees are broken into three main categories:
  //   Expr (for expressions)
  //   Stmt (for statements)
  //   Decl (for declarations)
  // plus a helper class for parameters in a procedure declaration

  ///// EXPRESSIONS /////
  sealed trait Expr
  // These cases of Expr are the same as HW6
  case class Num(value: Int) extends Expr
  case class Var(name: String) extends Expr
  case class Plus(left: Expr, right: Expr) extends Expr
  case class Minus(left: Expr, right: Expr) extends Expr
  case class Equals(left: Expr, right: Expr) extends Expr
  case class Less(left: Expr, right: Expr) extends Expr
  // These cases of Expr are new to HW7
  case object Input extends Expr 
  case class Times(left: Expr, right: Expr) extends Expr  
  case class Neg(expr: Expr) extends Expr
  case class LessEq(left: Expr, right: Expr) extends Expr // less than or equal
  case class Or(left: Expr, right: Expr) extends Expr
  case class ArrayLookup(name: String, index: Expr) extends Expr

  ///// STATEMENTS /////
  sealed trait Stmt
  // These cases of Stmt are the same as HW6
  case class Assign(name: String, expr: Expr) extends Stmt
  case class Output(expr: Expr) extends Stmt
  case class If(condition: Expr, thenStmt: Stmt, elseStmt: Stmt) extends Stmt
  case class While(condition: Expr, body: Stmt) extends Stmt
  // This case is slightly modified from HW6
  case class Block(decls: List[Decl], stmts: List[Stmt]) extends Stmt
  // These cases are new to HW7
  case class ArrayAssign(name: String, index: Expr, expr: Expr) extends Stmt
  case class ProcedureCall(name: String, args: List[Expr]) extends Stmt

  ///// DECLARATIONS /////
  sealed trait Decl
  case class VariableDecl(name: String, init: Expr) extends Decl
  case class ArrayDecl(name: String, size: Expr) extends Decl
  case class ProcedureDecl(name: String, params: List[Param], body: Stmt) extends Decl

  // This is a helper class used in ProcedureDecl
  case class Param(name: String, byRef: Boolean)

  //////////////////// ENVIRONMENTS AND DENOTABLES ///////////////////
  // A "denotable" is a piece of information that can be given a name.  
  // An environment maps each name to the related piece of information.
  // In this language, three kinds of things have names: variables, arrays,
  // and procedures.
  //   - For a variable, the environment holds a Location.
  //   - For an array, the environment holds a MemoryBlock.
  //   - For a procedure, the environment holds a Closure.
  // (Location, MemoryBlock, and Closure are defined later.)

  class Env private (private val map: Map[String, Denotable]) {
    def insert(name: String, value: Denotable): Env = 
      new Env(map + (name -> value))
    def lookupVar(name: String): Location = {
      if (!map.contains(name)) error("Unknown variable: " + name)
      map(name) match {
        case loc : Location => loc
        case _ : MemoryBlock => error("Expected variable, found array: " + name)
        case _ : Closure => error("Expected variable, found procedure: " + name)
      }
    }
    def lookupArray(name: String): MemoryBlock = {
      if (!map.contains(name)) error("Unknown array: " + name)
      map(name) match {
        case mem : MemoryBlock => mem
        case _ : Location => error("Expected array, found variable: " + name)
        case _ : Closure => error("Expected array, found procedure: " + name)
      }
    }
    def lookupProcedure(name: String): Closure = {
      if (!map.contains(name)) error("Unknown procedure: " + name)
      map(name) match {
        case closure : Closure => closure
        case _ : Location => error("Expected procedure, found variable: " + name  )
        case _ : MemoryBlock => error("Expected procedure, found array: " + name  )
      }
    }
  }

  // the constructor for the Env class is private, so the companion
  // object provides a way to get a fresh environment
  object Env {
    val empty = new Env(Map.empty)
  }

  // Information that can be named (Location, MemoryBlock, or Closure)
  trait Denotable

  // A Location models an address in memory
  class Location(var contents: Int) extends Denotable

  // A MemoryBlock models a block of addresses in memory
  class MemoryBlock(val locs: Map[Int, Location]) extends Denotable

  // A Closure holds the information the interpreter needs to know about
  // a procedure to be able to call the procedure.
  class Closure(val name: String, val params: List[Param], val body: Stmt)
               extends Denotable {
    var env: Env = null
  }

  //////////////////// PREDEFINED CASES ////////////////////

  // these "hooks" are how the code in this file finds out about your 
  // implementations in hw7.scala
  private var eval: (Expr,Env) => Int = null
  private var exec: (Stmt,Env) => Unit = null

  def setEval(evaluate: (Expr,Env) => Int) { eval = evaluate }
  def setExec(execute: (Stmt,Env) => Unit) { exec = execute }

  // if interactive, then inputs come from the keyboard, and outputs
  //   go to the screen
  // if not interactive, inputs come from the 'inputs' list and
  //   outputs go to the 'outputs' list 
  private var interactive: Boolean = true
  private var inputs: List[Int] = List.empty
  private var outputs: List[Int] = List.empty

  // predefinedEval and predefinedExec fill in the cases of eval and exec
  // that are essentially unchanged from HW6 (plus input and output)
  def predefinedEval(e: Expr, env: Env): Int = e match {
    case Input => { 
      if (interactive) {
        print("Enter a number: ")
        scala.io.StdIn.readLine().trim.toInt
      }
      else {
        val input = inputs.head
        inputs = inputs.tail
        input
      }
    }
    case Num(v) => v
    case Neg(x) => -eval(x,env)
    case Plus(x,y) => eval(x,env) + eval(y,env)
    case Minus(x,y) => eval(x,env) - eval(y,env)
    case Times(x,y) => eval(x,env) * eval(y,env)
    case Equals(x,y) => if (eval(x,env) == eval(y,env)) 1 else 0
    case Less(x,y) => if (eval(x,env) < eval(y,env)) 1 else 0
    case LessEq(x,y) => if (eval(x,env) <= eval(y,env)) 1 else 0
    case _ => {
      println("Don't know how to eval " + e)
      error("Not implemented yet.")
    }
  }

  def predefinedExec(s: Stmt,env: Env): Unit = s match {
    case Output(expr) => {
      if (interactive) println(">>> " + eval(expr,env))
      else outputs = eval(expr,env) :: outputs
    }
    case If(cond,thenPart,elsePart) =>
      if (eval(cond,env) != 0) exec(thenPart,env)
      else if (elsePart != null) exec(elsePart,env)
    case While(cond,body) => while (eval(cond,env) != 0) { exec(body,env) }
    case _ => {
      println("Don't know how to exec " + s)
      error("Not implemented yet.")
    }    
  }

  def interpret(program: Stmt) = exec(program, Env.empty)

  def run(text: String) = {
    interactive = true
    Parser.parse(text) match {
      case Parser.Success(program,_) => interpret(program)
      case Parser.Failure(msg,_) => println("Parser error: " + msg)
      case Parser.Error(msg,_) => println("Parser fatal error: " + msg)
    }
  }

  def test(text: String, ins: List[Int], outs: List[Int]) {
    interactive = false
    inputs = ins
    outputs = Nil
    try {
      Parser.parse(text) match {
        case Parser.Success(program,_) => interpret(program)
        case Parser.Failure(msg,_) => error("Parser error: " + msg)
        case Parser.Error(msg,_) => error("Parser fatal error: " + msg)
      }
      outputs = outputs.reverse
      if (outputs == outs) println("Passed.")
      else {
        println(s"""FAILED ON PROGRAM BELOW
On these inputs  : $ins
Expected outputs : $outs
But got outputs  : $outputs
Program =
$text""")
      }
    }
    catch { 
      case exn: Exception => 
	println(s"""FAILED: ${exn.getMessage}
Program =
$text""")
    }
  }

  //////////////////// ERROR REPORTING ////////////////////

  class BS_Error(msg: String) extends Exception(msg)

  def error(msg: String): Nothing = throw new BS_Error(msg)

  //////////////////// PARSER ////////////////////
  // You can safely ignore the details of the parser

  import scala.util.parsing.combinator.syntactical._

  object Parser extends StandardTokenParsers {
    lexical.reserved += ("output", "input",
                         "if", "then", "else",
                         "while", "do",
                         "begin", "end",
                         "var", "proc", "is", "array",
                         "ref")
    lexical.delimiters ++= List("(", ")", "[", "]", ",", ";", ":=",
                                "+", "-", "*", "<", "<=", "=", "||") 

    def program: Parser[Stmt] = stmt

    def binops(e: Parser[Expr], ops: (String, (Expr,Expr) => Expr)*) = {
      val sep: Parser[(Expr,Expr) => Expr] = {
        ops.map(op => keyword(op._1) ^^^ op._2)
           .reduce(_ | _)
      }
      chainl1(e,sep)
    }

    def expr0: Parser[Expr] = (
        "input" ~ "(" ~ ")" ^^^ Input 
      | numericLit ^^ (num => Num(Integer.parseInt(num)))
      | (ident <~ "[") ~ (expr <~ "]") ^^ (p => ArrayLookup(p._1,p._2))
      | ident ^^ (name => Var(name))
      | "(" ~> expr <~ ")"
    )
    def expr1: Parser[Expr] = (
        "-" ~> expr1 ^^ (e => Neg(e))
      | expr0
    )
    def expr2: Parser[Expr] = binops(expr1, "*" -> Times)
    def expr3: Parser[Expr] = binops(expr2, "+" -> Plus, "-" -> Minus)
    def expr4: Parser[Expr] = binops(expr3, "=" -> Equals, 
                                            "<" -> Less, 
                                            "<=" -> LessEq)
    def expr: Parser[Expr] = binops(expr4, "||" -> Or)
    def stmt: Parser[Stmt] = (
        "output" ~ "(" ~ expr ~ ")" ~ ";" ^^ {
          case _ ~ _ ~ e ~ _ ~ _ => Output(e)
        }
      | "if" ~ expr ~ "then" ~ stmt ~ opt("else" ~> stmt) ^^ {
          case _ ~ e ~ _ ~ s1 ~ None => If(e,s1,null)
          case _ ~ e ~ _ ~ s1 ~ Some(s2) => If(e,s1,s2)
        }
      | "while" ~ expr ~ "do" ~ stmt ^^ {
          case _ ~ e ~ _ ~ s => While(e,s)
        }
      | "begin" ~ (decl.*) ~ (stmt.*) ~ "end" ^^ {
          case _ ~ decls ~ stmts ~ _ => Block(decls,stmts)
        }
      | ident ~ ":=" ~ expr ~ ";" ^^ {
          case name ~ _ ~ e ~ _ => Assign(name,e)
        }
      | ident ~ "[" ~ expr ~ "]" ~ ":=" ~ expr ~ ";" ^^ {
          case name ~ _ ~ index ~ _ ~ _ ~ e ~ _ => ArrayAssign(name,index,e)
        }
      | ident ~ "(" ~ repsep(expr, ",") ~ ")" ~ ";" ^^ {
          case name ~ _ ~ args ~ _ ~ _ => ProcedureCall(name,args)
        }
    )
    def decl: Parser[Decl] = (
        "var" ~ ident ~ ":=" ~ expr ~ ";" ^^ { 
          case _ ~ name ~ _ ~ x ~ _ => VariableDecl(name,x)
        }
      | "proc" ~ ident ~ "(" ~ repsep(param,",") ~ ")" ~ "is" ~ stmt ^^ {
          case _ ~ name ~ _ ~ params ~ _ ~ _ ~ body => ProcedureDecl(name,params,body)
        }
      | "array" ~ ident ~ "[" ~ expr ~ "]" ~ ";" ^^ {
          case _ ~ name ~ _ ~ size ~ _ ~ _ => ArrayDecl(name,size)
        }
    )
    def param: Parser[Param] = (
        "ref" ~> ident ^^ (name => Param(name,true))
      | ident ^^ (name => Param(name,false))
    )

    def parse(text: String) = phrase(program)(new lexical.Scanner(text))
  }
} // end of hw7.base

