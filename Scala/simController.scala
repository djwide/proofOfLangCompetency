package Milestone4

class simController {
  private var moveNumber= 1
  private var roundNumber= 1
  private var numPlayers= 4
  val gameArea= new GameArea(this)
  val pQ= new PlayerQueue
  val mMaker= new Movemaker(gameArea.getBoard)
  var lastRoundBoard= gameArea.getBoard.copy
  var lastMoveBoard= gameArea.getBoard.copy
  def getMoveNumber:Int={
    moveNumber
  }
  def getRoundNumber:Int={
    roundNumber
  }
   def gameState: String={
     if(moveNumber==0&roundNumber==0)"Init"
     else if(getGameArea.getPlayers(0).isDone|| getGameArea.getPlayers(1).isDone|| getGameArea.getPlayers(2).isDone || getGameArea.getPlayers(3).isDone) "finished"
     else "running"
   }
   def getGameArea:GameArea={
     gameArea
   }
   def advanceMove={
     //println(roundNumber)
     val player= pQ.advance
     if(roundNumber==1 && player==0){
       var x =gameArea.p0.doAI
       if(x!=(null,null)){
         move(x._1,x._2)
         x._1.pause
       }
     }
     else if (player==0){ 
       var x =gameArea.p0.doAI
       if(x!=(null,null)){
         move(x._1,x._2)
         if(gameArea.getBoard.getCellsOfTriangle(gameArea.getPlayers(player).objTriangle).contains(x._1.getCell))
           x._1.pause
       }
     }
     else if(roundNumber==1 && player==1){
       var x =gameArea.p1.doAI
       if(x!=(null,null)){
         move(x._1,x._2)
         x._1.pause
       }
     }
     else if (player==1){ 
       var x =gameArea.p1.doAI
       if(x!=(null,null)){
         move(x._1,x._2)
         if(gameArea.getBoard.getCellsOfTriangle(gameArea.getPlayers(player).objTriangle).contains(x._1.getCell))
           x._1.pause
       }
     }
     else if(roundNumber==1 && player==2){
       var x =gameArea.p2.doAI
       if(x!=(null,null)){
         move(x._1,x._2)
         x._1.pause
       }
     }
     else if (player==2){ 
       var x =gameArea.p2.doAI
       if(x!=(null,null)){
         move(x._1,x._2)
         if(gameArea.getBoard.getCellsOfTriangle(gameArea.getPlayers(player).objTriangle).contains(x._1.getCell))
           x._1.pause
       }
     }
     else if(roundNumber==1 && player==3){
       var x =gameArea.p3.doAI
       if(x!=(null,null)){
         move(x._1,x._2)
         x._1.pause
       }
     }
     else if (player==3){ 
       var x =gameArea.p3.doAI
       if(x!=(null,null)){
         move(x._1,x._2)
         if(gameArea.getBoard.getCellsOfTriangle(gameArea.getPlayers(player).objTriangle).contains(x._1.getCell))
           x._1.pause
       }
     }
   }
   def move(p: Piece, c:Cell)={
     var tempRN= roundNumber
     roundNumber= moveNumber/numPlayers+1
     if (tempRN!=roundNumber)lastRoundBoard= gameArea.getBoard
     lastMoveBoard= gameArea.getBoard
     mMaker.makeMove(p,c)
     moveNumber+=1
     if((gameArea.getBoard.getCellsOfTriangle(0).toSet+gameArea.getBoard.getCellsOfTriangle(1).toSet+gameArea.getBoard.getCellsOfTriangle(2).toSet+gameArea.getBoard.getCellsOfTriangle(3).toSet).contains(p.getCell))
           p.pause
   }
   
   def backMove={
     gameArea.getBoard.rewrite(lastMoveBoard)
   }
   def showPlayingArea :String={
     var resStr= ""
     for (row<- gameArea.getBoard.getBoard) {
       for(cell<- row) if(cell== None) resStr= resStr+ " "
                     else resStr= resStr+ cell.get.mkString
       resStr= resStr+'\n'
     }
     resStr
   }
   def advanceRound={
     var noPlayers= 0 
     
     if(!gameArea.p0.isDone) noPlayers= noPlayers+1
     if(!gameArea.p1.isDone) noPlayers= noPlayers+1
     if(!gameArea.p2.isDone) noPlayers= noPlayers+1
     if(!gameArea.p3.isDone) noPlayers= noPlayers+1
     for(x<- 0 to noPlayers-1)advanceMove
   }
   def backRound={
     gameArea.getBoard.rewrite(lastRoundBoard)
   }
   def showResults: String= {
     "red: " +gameArea.p0.getScore+ '\n'+"green: "+ gameArea.p1.getScore+'\n' + "blue: "+ gameArea.p2.getScore+'\n'+"yellow: "+gameArea.p3.getScore   }
   def doGame={
     while(!(gameArea.p0.isDone&&gameArea.p1.isDone&&gameArea.p2.isDone&&gameArea.p3.isDone))advanceRound
   }
   
   def getWinner:String={
     if(gameArea.p0.isDone) gameArea.p0.getColor
     else if(gameArea.p1.isDone)gameArea.p1.getColor
     else if(gameArea.p2.isDone)gameArea.p2.getColor
     else if(gameArea.p3.isDone)gameArea.p3.getColor
     else "not over til it's over"
   }
}