package Milestone4

object runs extends App {
  override def main(args: Array[String])={
      val simCont= new simController
      while(simCont.gameState!= "finished"){
        simCont.advanceRound
        println(simCont.showPlayingArea)
        //count +=1
      }
      println(simCont.getWinner)
  }
}