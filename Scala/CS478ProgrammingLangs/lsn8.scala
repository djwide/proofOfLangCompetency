def process(a: Option[Int], b: Option[String], c: Option[Double]): Option[(Int, String, Double)]=
	for (x<- a; y<- b; z<- c) yield (x,y,z)
	
	
trait Expr
case class Num(n:Int) extends Expr
case class Var(name: String) extends Expr
case class Plus(left:Expr, right: Expr) extends Expr
case class Mult(left:Expr, right: Expr) extends Expr
case class Let (name: String, value: Expr, body: Expr) extends Expr

val dict= Map.empty[String, Int]
/**
trait Value
case class IntVal(n: Int) extends Value
case class StringVal(s: String) extends Value
**/


def eval(expr: Expr, env: Map[String, Int]): Int= expr match {
	case Num(n) =>n
	case Var(x)=> env(x)
	case Plus(e1,e2)=> eval(e1, env)+eval(e2, env)
	case Mult(e1,e2) => eval(e1, env)*eval(e2, env)
	case Let(x,v,b) => eval(b,env+(x-> eval(v,env)))
}

print(eval(Let("x", Num(5),
					Plus(Var("x"),Plus(
						Let("x", Num(7), Mult(Var("x"), Var("x"))), Var("x")))), dict))