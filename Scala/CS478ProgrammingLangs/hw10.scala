//David Weidman
// HW10

//A

trait BST{// extends Iterable[Int] {
  def apply(x: Int): Boolean // does the BST contain x?
  def +(x: Int): BST // add x to the BST, returning the new BST
 
  // Extending Iterable[Int] implies a stub
  def iterator: Iterator[Int]
  // that will need to be filled in by subclasses.
  // But Iterable also gives us a bunch of other goodies via inheritance.
}
 
case class Node(left: BST, item: Int, right: BST) extends BST {
  def apply(x: Int): Boolean = {
	if (x==item) true
	else if (x>item && right == Empty) false
	else if (x>item) right(x)
	else if (x< item && left == Empty) false
	else left(x)
  }
  def +(x: Int): BST = 
	if (x>=item) right + x
	else left + x
  def iterator: Iterator[Int] = {
	var ret = Iterator[Int](888)	
	def hasNext:Boolean= true
	def next: Int={
		if (!(left==Empty)) left.iterator.next
		else if (!(right ==Empty)){
			ret = right.iterator
			item
		}
		else {
			ret = left.iterator
			item
		}
		//		4
		//	2		6
		//1		3 5		7
		
		//		4
		//	2		6
		//		3 5		7
		
		//		4
		//	3		6
		//		 5		7
	}
	ret
  }
}
 
case object Empty extends BST {
  def apply(x: Int): Boolean = false
  def +(x: Int): BST = Node(null, x, null)
  def iterator: Iterator[Int] = {
	def hasNext: Boolean= false
	def next:Null = null
	null
  }
}


//B

trait RegExp {
  def iterator: Iterator[String]
}
case object Epsilon extends RegExp {
  def iterator: Iterator[String] = {
	var ret = Iterator[String]("")
	private var hasnext=true
	def hasNext:Boolean= hasnext
	def next(): String =
		if (hasNext) {
			hasnext=false
			""
		}
		else null
	ret
  }
}
case class Letter(c: Char) extends RegExp {
  def iterator: Iterator[String] = {
	var ret = Iterator[String](c.toString)
	private var hasnext=true
	def hasNext:Boolean= hasnext
	def next(): String =
		if (hasNext) {
			hasnext=false
			c.toString
		}
		else null
	ret
  }
}
case class Alt(r1: RegExp, r2: RegExp) extends RegExp {
  def iterator: Iterator[String] = {
	var ret = Iterator[String]("")
	val r1i=r1.iterator
	val r2i=r2.iterator
	def hasNext:Boolean= 
		if(r1i.hasNext||r2i.hasNext) true
		else false
	def next: String={
		if(r1i.hasNext) r1i.next
		else if(r2i.hasNext) r2i.next
		else null
	}
	ret
  }
}/*
case class Concat(r1: RegExp, r2: RegExp) extends RegExp {
  def iterator: Iterator[String] = {
	var ret = Iterator[String]("")
	val r1i=r1.iterator
	val r2i=r2.iterator
	def hasNext:Boolean= 
		if(r1i.hasNext&&r2i.hasNext) true
		else false
	def next: String={
		if(r1i.hasNext) r1i.next
		else if(r2i.hasNext) r2i.next
		else null
	}
	ret
  }
}*/
case class Star(r: RegExp) extends RegExp {
  def iterator: Iterator[String] = {
	val ret= Alt(Star(r1), Epsilon).iterator
	def hasNext:Boolean = true
	rets
  }
}
