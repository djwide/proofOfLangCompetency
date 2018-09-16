


trait Expr
case class Num(n:Int) extends Expr
case class Plus(left:Expr, right:Expr) extends Expr
case class Mult(left: Expr, right: Expr) extends Expr
case class Fact(n: Expr) extends Expr


def eval(e:Expr): Int= e match{
	case Num(n)=>n
	case Plus(x,y)=>eval(x)+eval(y)
	case Mult(x,y)=> eval(x)*eval(y)
	
}
def fact(num: Int):Int={
	if (num==0) 1
	else num*fact(num-1)
}