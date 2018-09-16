import scala.collection.mutable.Map
import scala.io.Source

package celebs {
  object P1 { 
    def loadNames(fname: String): List[String] = {
      val source = io.Source.fromFile(fname)
      val s= source.getLines
      val ls= s.toList
      source.close()
      ls
    }

    def createMashups (cList: List[String]): Vector[String] = {
      val vec = cList.toVector
      val newVec= vec.map(x=>x.split(" ").deep).combinations(2).filter(a=> a(0)(1)== a(1)(0)||a(0)(0)== a(1)(1)).map(x=>if(x(0)(1)== x(1)(0))x(0).mkString(" ")+ " " +x(1)(1).toString else x(1).mkString(" ")+ " " +x(0)(1).toString).toVector
      println(newVec.toList)
      newVec
    }
  }
}  
 
