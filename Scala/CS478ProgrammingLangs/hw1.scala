import scala.io.Source

object regExercise{
	def main(args: Array[String]){
		val fileStr= Source.fromFile(args(0)).mkString
		var solList= List.empty[String]
		print(fileStr)
		val eList= fileStr.split(" ")
		for(x <- eList)
			if(x.matches("[^ ]*@[uU][sS][mM][aA].[eE][dD][uU]"))solList=solList:+x
		print(solList.mkString("\n"))
		
	}
}