import celebs._

object celebJ {
  def main (args: Array[String]) = {
    val (isAgent, verbose, fname) = argEval(args)
    val player: Player = if (isAgent) new Agent else new Human
    
    val pb = new celebs.PuzzleBank("./resource/"+fname)
    var continue = true
    var qCount = 0
    var cCount = 0
    while (continue){
      qCount += 1
      if (!isAgent || verbose) println("--------------")
      val clue = pb.getClue
      val response = player.getGuess(clue)
      val result = pb.guess(response)
      if (result == "Correct") cCount += 1
      if (verbose) println(displayResult(clue,response,result))
      if (!isAgent) { 
         println("Play Again (y/n)?")
         continue = readChar()=='y'
      }
      continue &&= pb.canStillPlay
    }
    println("--------------")
    println("You got "+cCount+" out of "+qCount+" questions correct!")
    println("That is "+cCount*100.0/qCount+"% accuracy")
  }
  
  def argEval(args: Array[String]): (Boolean, Boolean, String) = {
    //no flags
    if (args.length == 1){
      if (!args(0).endsWith(".txt")) {println(usage); sys.exit(1)}
      (false, false, args(0))
    }
    //evaluate flags
    else if (args.length == 2){
      if (!(args(0).startsWith("-") && args(1).endsWith(".txt"))){
        println(usage)
        sys.exit(1)
      }
      if (args(0).contains('a')){
        if (args(0).contains('v')) (true, true, args(1))
        else (true, false, args(1))
      }
      else if (args(0).contains('v')) (false, true, args(1))
      //invalid flags
      else {println(usage); sys.exit(1)}
    }
    //invalid # of args
    else {println(usage); sys.exit(1)}
  }
   
  def usage = s"""Usage: scala celebJ [-va] <data file containing names>
  Examples: scala celebJ celebs.txt
            scala celebJ -v celebs.txt
            scala celebJ -a celebs.txt
            scala celebJ -va celebs.txt
  -v flag runs in verbose mode, where clues and guesses are displayed
  -a flag runs the game using your agent as the player - default is human player"""
  
  def displayResult(clue: String, resp: String, res: String) = {
    var result = "Clue: "+clue+"\nYour guess was "+resp+"\n"
    result = if (res == "Correct") result + "This was correct!"
              else result + "The correct answer was "+res
    result
  }
}

