package Milestone4

class Scoreboard {
  def showScoreboard(p0:Player,p1:Player, p2:Player, p3:Player):String={
    "Player 0 "+ p0.getScore.toString+", Player 1 "+ p1.getScore.toString+", Player 2 "+ p2.getScore.toString+ ", Player 3 "+ p3.getScore.toString
  }
  def showControls:String={
    "Advance Move| Advance Round| Finish Game"
  }
  def showPlayers:String={
    ???//for (x<- simCont.getGameArea.getPlayers) println(x.getColor)
  }

  //def getScore(p: Player):Int={
    //p.getScore
  //}
}