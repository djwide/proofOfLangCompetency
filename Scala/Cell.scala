package Milestone4

class Cell(x:Int,y:Int, occ: Option[Piece]) {
  if(occ!=None) occ.get.setCell(this)
  var occup= occ
  def getCoords: (Int,Int)={
    (x,y)
  }
  def isOccupied:Boolean= {
    if(occup==None)false
    else true
  }
  def changeOcc(newOcc: Option[Piece]){
    occup=newOcc
  }
  def getBorders(board:Board):Set[Cell]={
    val (x,y)= (getCoords._1, getCoords._2)
    val retSet=Set(board.getCell(x-1,y-1),board.getCell(x-1,y),board.getCell(x,y-1),board.getCell(x,y+1),board.getCell(x+1,y+1),board.getCell(x+1,y))
    retSet
  }
  def getOccupant:Option[Piece]={
    occup
  }
  def mkString: String={
    if(occup==None)"-"
    else occup.get.getColor.substring(0,1)
  }
  
}