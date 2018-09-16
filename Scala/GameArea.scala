package Milestone4

/**
 * @author x62865
 */
class GameArea(simCont: simController) {
  val board = new Board(this)
  
  val p0= new Player(0,"red", this)
  val p1= new Player(1,"green", this)
  val p2= new Player(2,"blue", this)
  val p3= new Player(3,"yellow", this)
  
  val sb = new Scoreboard
  
  def getBoard:Board={
    board
  }
  def getPlayers: List[Player]={
    List(p0,p1,p2,p3)
  }
}