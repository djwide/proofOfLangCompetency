package Milestone4

class Movemaker(board:Board) {
  def makeMove(p:Piece, cell:Cell):Board={
    //println(cell.getCoords)
    if(!cell.isOccupied&& cell!= board.cx){
      p.getCell.changeOcc(None)
      p.move(cell)
      cell.changeOcc(Some(p))
      //println(p.getColor)
      if (p.getColor=="blue"){
        if(cell== board.c40) p.gotHome
        else if(board.c40!=null && board.tri1Lay3.contains(cell)) p.gotHome
        else if(board.c40!=null && board.c41!= null && board.c51!=null && board.tri1Lay2.contains(cell)) p.gotHome
        else if(board.c40!=null && board.c41!= null && board.c51!=null&&board.c42!=null && board.c52!= null && board.c62!=null&& board.tri1Lay1.contains(cell)) p.gotHome
      }
      else if (p.getColor=="green"){
        if(cell== board.c1216) p.gotHome
        else if(board.c1216!=null && board.tri2Lay3.contains(cell)) p.gotHome
        else if(board.c1216!=null && board.c1215!= null && board.c1115!=null && board.tri2Lay2.contains(cell)) p.gotHome
        else if(board.c1216!=null && board.c1215!= null && board.c1115!=null&&board.c1214!=null && board.c1114!= null && board.c1014!=null&& board.tri2Lay1.contains(cell)) p.gotHome
      }
      else if (p.getColor=="yellow"){
        if(cell== board.c04) p.gotHome
        else if(board.c04!=null && board.tri0Lay3.contains(cell)) p.gotHome
        else if(board.c04!=null && board.c14!= null && board.c15!=null && board.tri0Lay2.contains(cell)) p.gotHome
        else if(board.c04!=null && board.c14!= null && board.c15!=null&&board.c24!=null && board.c25!= null && board.c26!=null&& board.tri0Lay1.contains(cell)) p.gotHome
      }
      else if (p.getColor=="red"){
        if(cell== board.c1612) p.gotHome
        else if(board.c1612!=null && board.tri3Lay3.contains(cell)) p.gotHome
        else if(board.c1612!=null && board.c1512!= null && board.c1511!=null && board.tri3Lay2.contains(cell)) p.gotHome
        else if(board.c1612!=null && board.c1512!= null && board.c1511!=null&&board.c1412!=null && board.c1411!= null && board.c1410!=null&& board.tri3Lay1.contains(cell)) p.gotHome
      }
    }
    board
  }
}