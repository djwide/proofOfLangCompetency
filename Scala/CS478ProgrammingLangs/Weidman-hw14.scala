// CS478: Homework 14
object hw14 extends eecs.cs478 {

  def userName = "DJWeidman"

  type Str = List[Char]
  type FCont = () => Boolean // failure continuation
  type SCont = (Str,FCont) => Boolean // success continuation
  type Parser = (Str,SCont,FCont) => Boolean

  val epsilon: Parser = (str: Str,sc: SCont,fc: FCont) =>
    sc(str,fc)
  def letter(c: Char): Parser = (str: Str,sc: SCont,fc: FCont) =>
    if (str.nonEmpty && str.head == c) sc(str.tail, fc)
    else fc()

  def alt(p1: Parser, p2: Parser): Parser = (str: Str,sc: SCont,fc: FCont)=>
    if(parse(p1, str.toString)) sc(str.tail,fc)                //misses what to subtract from str. assumes one char
    else if(parse(p2, str.toString)) sc(str.tail, fc)          //and probably many other things too
    else fc()

  def concat(p1: Parser, p2: Parser): Parser = (str: Str,sc: SCont,fc: FCont)=>
    if(parse(p1, str.toString)) parse(p2, str.toString.tail)  //me acknoledging that you didn't
    else fc()             //want us using pare in function bodies.  I did anyways.  Couldn't
                          //find anything better.  I tried

  def star(p: Parser): Parser = (str: Str,sc: SCont,fc: FCont)=> //exasperated sigh
    if(parse(p,str.toString)) parse(p, str.toString.tail)
    else fc()



  def parse(parser: Parser, string: String): Boolean = {
    val checkForEndOfInput: SCont = (str: Str, fc: FCont) =>
      if (str.isEmpty) true
      else fc()
    val totalFailure: FCont = () => false
    parser(string.toList,checkForEndOfInput,totalFailure)
  }

  def translate(s:String): Parser = { // only used for testing
    var i = 0
    def consume(key: String) =
      if (s.startsWith(key,i)) { i += key.length; true }
      else false
    def force(key: String) {
      if (s.startsWith(key,i)) i += key.length
      else throw new Exception(s"syntax error in $s")
    }
    def trans(): Parser = {
      if (consume("epsilon")) epsilon
      else if (consume("letter('")) {
	val c = s(i) // should check if out of bounds
	i += 1
	force("')")
	letter(c)
      }
      else if (consume("alt(")) {
        val p1 = trans()
        force(",")
        val p2 = trans()
        force(")")
	alt(p1,p2)
      }
      else if (consume("concat(")) {
        val p1 = trans()
        force(",")
        val p2 = trans()
        force(")")
	concat(p1,p2)
      }
      else if (consume("star(")) {
	val p = trans()
	force(")")
	star(p)
      }
      else throw new Exception(s"syntax error in $s")
    }
    val p = trans()
    if (i != s.length) throw new Exception(s"syntax error in $s")
    p
  }
  def check(pattern: String, text: String): Boolean =
    parse(translate(pattern), text)

  test("alt",check _,"pattern","text")
  test("concat",check _,"pattern","text")
  test("concat+alt",check _,"pattern","text")
  test("star",check _,"pattern","text")
}
hw14.run

