package Milestone4

class Piece(color: String) {
  var cell=new Cell(-1,-1,None)
  private var (paused, home)= (false, false)
  def setCell(c: Cell)={
    cell=c
  }
  def getColor:String={
    color
  }
  def isPaused={
    paused
  }
  def unPause={
    paused=false
  }
  def pause={
    paused= true
  }
  def canMove: Boolean={
    if(getMoveLocs.isEmpty)false
    else true
  }
  def gotHome={
    home = true
  }
  def isHome: Boolean={
    home
  }
  def getCell:Cell={
    cell 
  }
  def move(newCell: Cell)={
    //newCell.changeOcc(Some(this))
    cell = newCell
  }
    
  def getMoveLocs:Set[Cell]={
    ???/*var c = getCell
    var retSet= Set[Cell]()
    for(x <- c.getBorders(board))if(!x.isOccupied) retSet= retSet+c
    retSet*/
  }
}