//David Weidman
// HW13

//Part A
def swapArgs[A,B,C](f: (A,B) => C):(B,A)=> C = {
	def g(b:B,a:A):C=f(a,b)
	g
}


//def f(a:Int, b:String):Tuple2[Int, String] =Tuple2(a,b)
//swapArgs(f)
// res1: (String, Int)=> (Int, String)= <function2>
// res1("a",1)
//res2: (Int, String)= (1,a)
	
//Part B

//error: type mismatch;
// found: List[List[Any]]
//required:List[List[All]]							v
	//val ret=l.foldRight(List(x))((a,b) => List(a) +: subsets(b))

//I can't explore the topics were covering because I can't get past 
//what seems to be quirky language issues
//unless that's the pupose of the hw... in which case I just don't undestand
def subsets[A](l: List[A]): List[List[A]] = {
	val x = List.empty[A]
	val ret=l.foldRight(List(x))((a,b) => List(a) +: subsets(b))
	List(x)
}


//Part C
type Dict = String => Option[Int]

def lookup(key: String, dict: Dict): Option[Int] = dict(key)

def empty: Dict= key => None
/*
My understanding is flawed apparently.  Non-declared "key" works in empty^^^ but not here vvv?
I couldn't get over the hurdle of the arguments not having names.
def insert(k: String, value: Int, dict: Dict): Dict= {
	def dictN:Dict =key match {
		case k=> (k=>Some(value))
		case _ => (_=>lookup(key, dict))
	}
	dictN
}
*/