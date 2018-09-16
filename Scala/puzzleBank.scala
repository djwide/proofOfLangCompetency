import scala.collection.mutable.Map
import scala.io.Source
import scala.util.Random

package celebs{

  class PuzzleBank (fname: String){
    //The first two values are populated by the methods
    //you wrote for phase 1
    private val names = P1.loadNames(fname)
    private val puzzles = Random.shuffle(P1.createMashups(names)).toIterator
    private val clues = loadClues("./resource/clues.txt")
    private var currPuzz = ""
    private var currClue = ""
    private var gameOver = false
  
    private def loadClues (fname: String): Map[String,String] = {
      val fileSource=Source.fromFile(fname)
      val m: Map[String,String] = Map()
      for (line <- fileSource.getLines()){
        val data = line.split(", ")
        if (names.contains(data(0))) m(data(0)) = data(1)
      } 
      fileSource.close
      m
    }  
    
    private def canGen = puzzles.hasNext
    
    private def genClue {
      if (canGen){
         val mashup = puzzles.next
         val names = mashup.split(" ")
         val name1 = names(0) + " " + names(1)
         val name2 = names(1) + " " + names(2)
         currPuzz = mashup
         currClue = clues(name1) + " meets " + clues(name2)
      }
      else {
        gameOver = true
        currPuzz = ""
        currClue = ""
      }
    }  
    
    def getClue = currClue
    
    def canStillPlay = !gameOver
    
    def guess(name: String): String = {
      val res = if (name == currPuzz) "Correct"
                else currPuzz
      //Guess assumes we do not want to allow
      //multiple guesses, so we generate the next clue
      genClue
      res
    }
    
    //initialize the first clue
    genClue
  }
}

