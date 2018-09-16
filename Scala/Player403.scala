package Milestone4

import scala.util.Random

class Player(homeTri:Int, color: String, g:GameArea) {
  val goalTri= {
    if(homeTri==0) 3
    else if(homeTri==1) 2
    else if(homeTri==2) 1
    else if(homeTri==3) 0
    else -1 
  }
  
  val pieces= g.getBoard.getPieces(color)

  def numPiecesHome(board: Board):Int={
   board.noPiecesInTriangle(homeTri)
  }
  def getScore: Int= {
    val goal= g.getBoard.getCellsOfTriangle(goalTri)
    var count = 0
    for(x<- goal) 
      if(x.getOccupant.get.getColor == "red"&& goalTri==2)count= count+1
      else if(x.getOccupant.get.getColor == "green"&& goalTri==3)count= count+1
      else if(x.getOccupant.get.getColor == "blue"&& goalTri==0)count= count+1
      else if(x.getOccupant.get.getColor == "yellow"&& goalTri==1)count= count+1
    count
  }
  def canMove(board:Board): Boolean={
    if (getMoveLocs(board).isEmpty) false
    else true
  }
  def getMoveLocs(board:Board):Set[Cell]={
   /* var moveLocs= Set[Cell]()
    for(p <- getPieces) moveLocs= moveLocs++p.getMoveLocs(board)
    moveLocs*/???
  }
  def getPieces:List[Piece]={
    pieces
  }

  def isDone:Boolean={
    for(x <- pieces) if(!x.isHome) return false
    true
  }
  def getPieceLocs:List[Cell]={
    var retList= List[Cell]()
    for (x<-pieces)retList= retList:+x.getCell
    retList
  }
  def getColor: String={
    color
  }

  def homeTriangle:Int={
    homeTri
  }
  def objTriangle:Int={
    goalTri
  }
  def doAI:(Piece,Cell)={
    //println(color +" ")
    val goalCell= g.getBoard.goalCell(goalTri)
    //Empty home triangle
    for (c <-g.getBoard.getCellsOfTriangle(homeTri))
      if(c.getOccupant!=None&&c.getOccupant.get.getColor==color){
        val x= getOptimalMove(c.getOccupant.get, goalCell)
        if(x!=null){
          //println(x.getCoords + "Empty Home")
          return (c.getOccupant.get,x)
        }
      }
    //push to back of goal triangle
    for(c <- g.getBoard.getCellsOfTriangle(goalTri))
      if(c.getOccupant!=None&&c.getOccupant.get.getColor==color){
        val x= pushToBack(c.getOccupant.get)
        if(x!=null){
          //println(x.getCoords+ "Push to Back")
          return (c.getOccupant.get,x)
        }
      }
    //move pieces towards goal
    for(piece <- pieces)
      if(!(piece.isPaused||piece.isHome)){ 
        var opt=getOptimalMove(piece, goalCell)
        if(opt !=null){//call subfunction
          //println("Opt")
          return(piece, opt)
          }
        }
    //randomize
     for (piece<- Random.shuffle(pieces))
      if(!(piece.isPaused||piece.isHome)){
        var any= getAnyMove(piece.getCell)
        if (any!=null)
          return(piece,any)
      }
    //unlock piece and move it
    for(piece<-pieces)
      if(piece.isPaused){
        piece.unPause
        getOptimalMove(piece,goalCell)
      }
    (null,null)
  }
  
  def pushToBack(p:Piece):Cell={
    if(goalTri==0)  
      if(g.getBoard.tri0Lay4.getOccupant==None && (g.getBoard.tri0Lay3++ g.getBoard.tri0Lay2 ++ g.getBoard.tri0Lay1).contains(p.getCell)) getOptimalMove(p, g.getBoard.tri0Lay4)
      else {
        for(c<-g.getBoard.tri0Lay3) if(c.getOccupant==None&& (g.getBoard.tri0Lay2++g.getBoard.tri0Lay1).contains(p.getCell)) return getOptimalMove(p, c)
        for(c<-g.getBoard.tri0Lay2) if(c.getOccupant==None && g.getBoard.tri0Lay1.contains(p.getCell)) return getOptimalMove(p, c)
        null
      }
    else if(goalTri==1)  
      if(g.getBoard.tri1Lay4.getOccupant==None && (g.getBoard.tri1Lay3++ g.getBoard.tri1Lay2 ++ g.getBoard.tri1Lay1).contains(p.getCell))getOptimalMove(p, g.getBoard.tri1Lay4)
      else {
        for(c<-g.getBoard.tri1Lay3) if(c.getOccupant==None && (g.getBoard.tri1Lay2 ++ g.getBoard.tri1Lay1).contains(p.getCell)) return getOptimalMove(p, c)
        for(c<-g.getBoard.tri1Lay2) if(c.getOccupant==None && g.getBoard.tri1Lay1.contains(p.getCell)) return getOptimalMove(p, c)
        null
      }
    else if(goalTri==2)  
      if(g.getBoard.tri2Lay4.getOccupant==None && (g.getBoard.tri2Lay3++ g.getBoard.tri2Lay2 ++ g.getBoard.tri2Lay1).contains(p.getCell))getOptimalMove(p, g.getBoard.tri2Lay4)
      else {
        for(c<-g.getBoard.tri2Lay3) if(c.getOccupant==None && (g.getBoard.tri2Lay2 ++ g.getBoard.tri2Lay1).contains(p.getCell)) return getOptimalMove(p, c)
        for(c<-g.getBoard.tri2Lay2) if(c.getOccupant==None && g.getBoard.tri2Lay1.contains(p.getCell)) return getOptimalMove(p, c)
        null
      }
    else  
      if(g.getBoard.tri3Lay4.getOccupant==None && (g.getBoard.tri3Lay3++ g.getBoard.tri3Lay2 ++ g.getBoard.tri3Lay1).contains(p.getCell))getOptimalMove(p, g.getBoard.tri3Lay4)
      else {
        for(c<-g.getBoard.tri3Lay3) if(c.getOccupant==None && (g.getBoard.tri3Lay2 ++ g.getBoard.tri3Lay1).contains(p.getCell)) return getOptimalMove(p, c)
        for(c<-g.getBoard.tri3Lay2) if(c.getOccupant==None && g.getBoard.tri3Lay1.contains(p.getCell)) return getOptimalMove(p, c)
        null
      } 
  }
  
  def getOptimalMove(p:Piece, goalCell: Cell):Cell={
    //print(p.getCell.getCoords)
    //diags up left
    if(p.getCell.getCoords._1>goalCell.getCoords._1&&p.getCell.getCoords._2>goalCell.getCoords._2){
      if(g.getBoard.getCell(p.getCell.getCoords._1-1,p.getCell.getCoords._2-1).getOccupant==None) 
        return g.getBoard.getCell(p.getCell.getCoords._1-1,p.getCell.getCoords._2-1)
      else if(g.getBoard.getCell(p.getCell.getCoords._1-2,p.getCell.getCoords._2-2).getOccupant==None)
        return g.getBoard.getCell(p.getCell.getCoords._1-2,p.getCell.getCoords._2-2)
    }
    //diags down right
    else if(p.getCell.getCoords._1<goalCell.getCoords._1&&p.getCell.getCoords._2<goalCell.getCoords._2){
      if(g.getBoard.getCell(p.getCell.getCoords._1+1,p.getCell.getCoords._2+1).getOccupant==None) 
        return g.getBoard.getCell(p.getCell.getCoords._1+1,p.getCell.getCoords._2+1)
      else if(g.getBoard.getCell(p.getCell.getCoords._1+2,p.getCell.getCoords._2+2).getOccupant==None)
        return g.getBoard.getCell(p.getCell.getCoords._1+2,p.getCell.getCoords._2+2)
    }
    //y
    else if(p.getCell.getCoords._2<goalCell.getCoords._2){
      if(g.getBoard.getCell(p.getCell.getCoords._1,p.getCell.getCoords._2+1).getOccupant==None)
        return g.getBoard.getCell(p.getCell.getCoords._1,p.getCell.getCoords._2+1) 
      else if(g.getBoard.getCell(p.getCell.getCoords._1,p.getCell.getCoords._2+2).getOccupant==None)
        return g.getBoard.getCell(p.getCell.getCoords._1,p.getCell.getCoords._2+2)    
    }
    else if(p.getCell.getCoords._2>goalCell.getCoords._2) {
      if(g.getBoard.getCell(p.getCell.getCoords._1,p.getCell.getCoords._2-1).getOccupant==None)
        return g.getBoard.getCell(p.getCell.getCoords._1,p.getCell.getCoords._2-1)
      else if(g.getBoard.getCell(p.getCell.getCoords._1,p.getCell.getCoords._2-2).getOccupant==None)
        return g.getBoard.getCell(p.getCell.getCoords._1,p.getCell.getCoords._2-2)
    }
    //x
    else if(p.getCell.getCoords._1<goalCell.getCoords._1) {
      if(g.getBoard.getCell(p.getCell.getCoords._1+1,p.getCell.getCoords._2).getOccupant==None)
        return g.getBoard.getCell(p.getCell.getCoords._1+1,p.getCell.getCoords._2)
      else if(g.getBoard.getCell(p.getCell.getCoords._1+2,p.getCell.getCoords._2).getOccupant==None)
        return g.getBoard.getCell(p.getCell.getCoords._1+2,p.getCell.getCoords._2)
    }
    else if(p.getCell.getCoords._1>goalCell.getCoords._1) {
      if(g.getBoard.getCell(p.getCell.getCoords._1-1,p.getCell.getCoords._2).getOccupant==None)
        return g.getBoard.getCell(p.getCell.getCoords._1-1,p.getCell.getCoords._2)
      else if(g.getBoard.getCell(p.getCell.getCoords._1-2,p.getCell.getCoords._2).getOccupant==None)
        return g.getBoard.getCell(p.getCell.getCoords._1-2,p.getCell.getCoords._2)
    }
    null
  }
  def getAnyMove(c:Cell):Cell={
    //print(c.getCoords)
    //println("A")
    val (x,y)= (c.getCoords._1, c.getCoords._2)
    if(g.getBoard.getCell(x+1,y).getOccupant==None) g.getBoard.getCell(x+1,y)
    else if(g.getBoard.getCell(x-1,y).getOccupant==None) g.getBoard.getCell(x-1,y)
    else if(g.getBoard.getCell(x+1,y+1).getOccupant==None) g.getBoard.getCell(x+1,y+1)
    else if(g.getBoard.getCell(x-1,y-1).getOccupant==None) g.getBoard.getCell(x-1,y-1)
    else if(g.getBoard.getCell(x,y+1).getOccupant==None) g.getBoard.getCell(x,y+1)
    else if(g.getBoard.getCell(x,y-1).getOccupant==None) g.getBoard.getCell(x,y-1)
    else null
  }
}