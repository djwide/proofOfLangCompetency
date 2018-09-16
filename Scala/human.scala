package celebs {
  class Human extends Player{
    def getGuess(clue: String): String = {
      println(clue)
      readLine(">>> ")
    } 
  }
}
