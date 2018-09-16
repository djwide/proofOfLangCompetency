//See hw6.pdf for a description of the assignment and a diagram
//of an example Trie

class Trie { // represents a mutable set of strings
  
  def isEmpty: Boolean = (root == empty)

  def apply(str: String): Boolean = { // is the string in the set?
    search(str.toList, root)
  }

  var debug = true
  def +=(str: String) { // add a new string to the set
    root = add(str.toList, root)
    if (debug) {
      println("Add " + str)
      println("New set  = " + toString)
      println("Internal = " + show)
    }
  }

  def toList = { // make a list of all the strings in the set (in no particular order)
    mkList(root)
  }

  // use toString if you just want to see what strings are in the set
  // use show if you want more details about the internal structure of the trie
  override def toString = toList.mkString("Trie(",",",")")
  def show: String = root.toString

  private case class T(canEndHere: Boolean, children: Map[Char,T])
  private val empty = T(false,Map.empty)

  private var root = empty

  // FILL IN SEARCH AND ADD
  private def search(list: List[Char], t:T): Boolean = {
    if(list.length == 1& t.children.contains(list(0))) return true
    else if (t.children.contains(list(0))) search(list.drop(1), t.children(list(0)))
    else return false
  }

  private def add(list: List[Char], t:T): T = {
    if(t.children.isEmpty & list.length==1) return T(true, Map(list(0)->empty))
    else if(t.children.isEmpty) return T(false, Map(list(0)->add(list.drop(1),empty)))
    else if(list.length== 1) return T(true, t.children updated(list(0),t.children(list(0))))
    else if(t.children.contains(list(0))) return T(t.canEndHere, t.children updated(list(0), add(list.drop(1), t.children(list(0)))))
    else return T(t.canEndHere, t.children updated(list(0), add(list.drop(1), empty)))
  }
  
  private def mkList(t: T): List[String] = {
    val pairs = t.children.mapValues(mkList).toList
    val strings = pairs.flatMap{case (c,strs) => strs.map(c +: _)}
    if (t.canEndHere) "" +: strings else strings
  }
}

