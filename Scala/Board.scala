package Milestone4

class Board(g:GameArea) {
  var boardArray= Array.fill(17,17)(None: Option[Cell])
  val (r0,r1,r2,r3,r4,r5,r6,r7,r8,r9)=(new Piece("red"),new Piece("red"),
      new Piece("red"),new Piece("red"),new Piece("red"),new Piece("red"),new Piece("red"),
      new Piece("red"),new Piece("red"),new Piece("red"))
  val (g0,g1,g2,g3,g4,g5,g6,g7,g8,g9)=(new Piece("green"),new Piece("green"),
      new Piece("green"),new Piece("green"),new Piece("green"),new Piece("green"),new Piece("green"),
      new Piece("green"),new Piece("green"),new Piece("green"))
  val (b0,b1,b2,b3,b4,b5,b6,b7,b8,b9)=(new Piece("blue"),new Piece("blue"),
      new Piece("blue"),new Piece("blue"),new Piece("blue"),new Piece("blue"),new Piece("blue"),
      new Piece("blue"),new Piece("blue"),new Piece("blue"))
  val (y0,y1,y2,y3,y4,y5,y6,y7,y8,y9)=(new Piece("yellow"),new Piece("yellow"),
      new Piece("yellow"),new Piece("yellow"),new Piece("yellow"),new Piece("yellow"),new Piece("yellow"),
      new Piece("yellow"),new Piece("yellow"),new Piece("yellow"))
  val (c04,c14,c24,c34,c15,c25,c35,c26,c36,c37)= (new Cell(0,4,Some(r9)),
      new Cell(1,4,Some(r8)),new Cell(2,4,Some(r6)),new Cell(3,4,Some(r3)),new Cell(1,5,Some(r7)),
      new Cell(2,5,Some(r5)),new Cell(3,5,Some(r2)), new Cell(2,6,Some(r4)), new Cell(3,6,Some(r1)),new Cell(3,7,Some(r0)))
  val triangle0 = Set(c34,c35,c36,c37,c24,c25,c26,c14,c15,c04)
  val tri0Lay1 =Set(c34,c35,c36,c37)
  val tri0Lay2 =Set(c24,c25,c26)
  val tri0Lay3 =Set(c14,c15)
  val tri0Lay4= c04
  boardArray(0)(4)=Some(c04)
  boardArray(1)(4)=Some(c14)
  boardArray(2)(4)=Some(c24)
  boardArray(3)(4)=Some(c34)
  boardArray(1)(5)=Some(c15)
  boardArray(2)(5)=Some(c25)
  boardArray(3)(5)=Some(c35)
  boardArray(2)(6)=Some(c26)
  boardArray(3)(6)=Some(c36)
  boardArray(3)(7)=Some(c37)
  val (c40,c41,c42,c43,c51,c52,c53,c62,c63,c73)= (new Cell(4,0,Some(g9)),new Cell(4,1,Some(g8)),
      new Cell(4,2,Some(g6)),new Cell(4,3,Some(g3)),new Cell(5,1,Some(g7)),new Cell(5,2,Some(g5)),
      new Cell(5,3,Some(g2)), new Cell(6,2,Some(g4)), new Cell(6,3,Some(g1)),new Cell(7,3,Some(g0)))
  val triangle1= Set(c43,c53,c63,c73,c42,c52,c62,c41,c51,c40)
  val tri1Lay1= Set(c43,c53,c63,c73)
  val tri1Lay2= Set(c42,c52,c62)
  val tri1Lay3= Set(c41,c51)
  val tri1Lay4= c40
  boardArray(4)(0)=Some(c40)
  boardArray(4)(1)=Some(c41)
  boardArray(4)(2)=Some(c42)
  boardArray(4)(3)=Some(c43)
  boardArray(5)(1)=Some(c51)
  boardArray(5)(2)=Some(c52)
  boardArray(5)(3)=Some(c53)
  boardArray(6)(2)=Some(c62)
  boardArray(6)(3)=Some(c63)
  boardArray(7)(3)=Some(c73)
  val (c913,c1013,c1113,c1213,c1014,c1114,c1214,c1115,c1215,c1216)=(new Cell(9,13,Some(b0)),new Cell(10,13,Some(b1)),
      new Cell(11,13,Some(b2)),new Cell(12,13,Some(b3)),new Cell(10,14,Some(b4)),new Cell(11,14,Some(b5)),
      new Cell(12,14,Some(b6)),new Cell(11,15,Some(b7)),new Cell(12,15,Some(b8)),new Cell(12,16,Some(b9)))
  val triangle2= Set(c913,c1013,c1113,c1213,c1014,c1114,c1214,c1115,c1215,c1216)
  val tri2Lay1= Set(c913,c1013,c1113,c1213)
  val tri2Lay2= Set(c1014,c1114,c1214)
  val tri2Lay3= Set(c1115,c1215)
  val tri2Lay4= c1216
  boardArray(9)(13)=Some(c913)
  boardArray(10)(13)=Some(c1013)
  boardArray(11)(13)=Some(c1113)
  boardArray(12)(13)=Some(c1213)
  boardArray(10)(14)=Some(c1014)
  boardArray(11)(14)=Some(c1114)
  boardArray(12)(14)=Some(c1214)
  boardArray(11)(15)=Some(c1115)
  boardArray(12)(15)=Some(c1215)
  boardArray(12)(16)=Some(c1216)
  val (c1312,c1412,c1512,c1612,c1311,c1411,c1511,c1310,c1410,c139)= (new Cell(13,12,Some(y0)),
      new Cell(14,12, Some(y4)),new Cell(15,12,Some(y7)),new Cell(16,12,Some(y9)),new Cell(13,11,Some(y1)),new Cell(14,11,Some(y5)),
      new Cell(15,11,Some(y8)),new Cell(13,10,Some(y2)),new Cell(14,10,Some(y6)),new Cell(13,9,Some(y3)))
  val triangle3= Set(c1312,c1311,c1310,c139,c1410,c1411,c1412,c1511,c1512,c1612)
  val tri3Lay1= Set(c1312,c1311,c1310,c139)
  val tri3Lay2= Set(c1410,c1411,c1412)
  val tri3Lay3= Set(c1511,c1512)
  val tri3Lay4= c1612
  boardArray(13)(12)=Some(c1312)
  boardArray(14)(12)=Some(c1412)
  boardArray(15)(12)=Some(c1512)
  boardArray(16)(12)=Some(c1612)
  boardArray(13)(11)=Some(c1311)
  boardArray(14)(11)=Some(c1411)
  boardArray(15)(11)=Some(c1511)
  boardArray(13)(10)=Some(c1310)
  boardArray(14)(10)=Some(c1410)
  boardArray(13)(9)=Some(c139)
  val (c44, c45,c46,c47,c48,c49,c410,c411,c412)=(new Cell(4,4, None),new Cell(4,5,None),new Cell(4,6,None),new Cell(4,7,None),
      new Cell(4,8,None),new Cell(4,9,None),new Cell(4,10,None),new Cell(4,11,None),
      new Cell(4,12,None))
  val (c54, c55,c56,c57,c58,c59,c510,c511,c512)=  (new Cell(5,4,None),new Cell(5,5,None),new Cell(5,6,None),
      new Cell(5,7,None),new Cell(5,8,None),new Cell(5,9,None),new Cell(5,10,None),
      new Cell(5,11,None),new Cell(5,12,None))
  val (c64,c65,c66,c67,c68,c69,c610,c611,c612)= (new Cell(6,4,None),new Cell(6,5,None),
      new Cell(6,6,None),new Cell(6,7,None),new Cell(6,8,None),new Cell(6,9,None),
      new Cell(6,10,None),new Cell(6,11,None),new Cell(6,12,None))
  val (c74,c75,c76,c77,c78,c79,c710,c711,c712)=(new Cell(7,4,None),
      new Cell(7,5,None),new Cell(7,6,None),new Cell(7,7,None),new Cell(7,8,None),
      new Cell(7,9,None),new Cell(7,10,None),new Cell(7,11,None),new Cell(7,12,None))
  val (c84,c85,c86,c87,c88,c89,c810,c811,c812)= (new Cell(8,4,None),new Cell(8,5,None),new Cell(8,6,None),new Cell(8,7,None),
      new Cell(8,8,None),new Cell(8,9,None),new Cell(8,10,None),new Cell(8,11,None),
      new Cell(8,12,None))
  val (c94,c95,c96,c97,c98,c99,c910,c911,c912)=(new Cell(9,4,None),new Cell(9,5,None),new Cell(9,6,None),
      new Cell(9,7,None),new Cell(9,8,None),new Cell(9,9,None),new Cell(9,10,None),
      new Cell(9,11,None),new Cell(9,12,None))
  val (c104,c105,c106,c107,c108,c109,c1010,c1011,c1012)= (new Cell(10,4,None),new Cell(10,5,None),
      new Cell(10,6,None),new Cell(10,7,None),new Cell(10,8,None),new Cell(10,9,None),
      new Cell(10,10,None),new Cell(10,11,None),new Cell(10,12,None))
  val (c114,c115,c116,c117,c118,c119,c1110,c1111,c1112)=  (new Cell(11,4,None),
      new Cell(11,5,None),new Cell(11,6,None),new Cell(11,7,None),new Cell(11,8,None),
      new Cell(11,9,None),new Cell(11,10,None),new Cell(11,11,None),new Cell(11,12,None))
  val (c124,c125,c126,c127,c128,c129,c1210,c1211,c1212)=  (new Cell(12,4,None),new Cell(12,5,None),new Cell(12,6,None),new Cell(12,7,None),
      new Cell(12,8,None),new Cell(12,9,None),new Cell(12,10,None),new Cell(12,11,None),
      new Cell(12,12,None))
  val rhomIter= Iterator(c44, c45,c46,c47,c48,c49,c410,c411,c412,c54, c55,c56,c57,c58,c59,c510,c511,c512, c64,c65,c66,c67,c68,c69,c610,c611,c612, c74,c75,c76,c77,c78,c79,c710,c711,c712, c84,c85,c86,c87,c88,c89,c810,c811,c812, c94,c95,c96,c97,c98,c99,c910,c911,c912,c104,c105,c106,c107,c108,c109,c1010,c1011,c1012, c114,c115,c116,c117,c118,c119,c1110,c1111,c1112,c124,c125,c126,c127,c128,c129,c1210,c1211,c1212)
  for (x<-4 to 12)for(y<- 4 to 12) boardArray(x)(y)= Some(rhomIter.next)
  val rhombus =Set(c44, c45,c46,c47,c48,c49,c410,c411,c412,c54, c55,c56,c57,c58,c59,c510,c511,c512, c64,c65,c66,c67,c68,c69,c610,c611,c612, c74,c75,c76,c77,c78,c79,c710,c711,c712, c84,c85,c86,c87,c88,c89,c810,c811,c812, c94,c95,c96,c97,c98,c99,c910,c911,c912,c104,c105,c106,c107,c108,c109,c1010,c1011,c1012,c104,c105,c106,c107,c108,c109,c1010,c1011,c1012,c114,c115,c116,c117,c118,c119,c1110,c1111,c1112,c124,c125,c126,c127,c128,c129,c1210,c1211,c1212)
  val playingField= rhombus ++ triangle0 ++ triangle1 ++ triangle2 ++ triangle3 
  
  def getPieces:List[Option[Piece]]={
    var pieces = List[Option[Piece]]()
    for (x<-playingField) pieces= x.getOccupant +: pieces
    pieces
  }
  def getPieces(color:String):List[Piece]={
    if (color=="red")List(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9)
    else if (color=="blue")List(b0,b1,b2,b3,b4,b5,b6,b7,b8,b9)
    else if (color=="green")List(g0,g1,g2,g3,g4,g5,g6,g7,g8,g9)
    else List(y0,y1,y2,y3,y4,y5,y6,y7,y8,y9)
  }
  def noPiecesInTriangle(triNo:Int): Int={
    if(triNo== 0){
      var count= 0
      for(space <- triangle0) if(space.isOccupied) count= count+1
      count
    }
    else if(triNo == 1){
      var count= 0
      for(space <- triangle1) if(space.isOccupied) count= count+1
      count
    }
    else if(triNo == 2){
      var count= 0
      for(space <- triangle2) if(space.isOccupied) count= count+1
      count
    }
    else if(triNo == 3){
      var count= 0
      for(space <- triangle3) if(space.isOccupied) count= count+1
      count
    }
    else -1
  }
  def getPlayingField:Set[Cell]={
    playingField
  }
  def getCellsOfTriangle(tri:Int):List[Cell]={
    if(tri==0) triangle0.toList
    else if(tri==1) triangle1.toList
    else if(tri==2)triangle2.toList
    else if(tri==3) triangle3.toList
    else List[Cell]()
  }
  def getOpenCellsOfTriangle(tri:Int):List[Cell]={
    if(tri==0) triangle0.toList.filterNot(_.isOccupied)
    else if(tri==1) triangle1.toList.filterNot(_.isOccupied)
    else if(tri==2)triangle2.toList.filterNot(_.isOccupied)
    else if(tri==3) triangle3.toList.filterNot(_.isOccupied)
    else List[Cell]()
  }
  def fillTri(tri:Int)={
    for(x<- getCellsOfTriangle(tri)) x.changeOcc(Some(new Piece("red"))) 
  }
  
  def getBoard:Array[Array[Option[Cell]]]={
    boardArray
  }
  def isEmpty:Boolean={
    boardArray.isEmpty
  }
  def copy:Board={
    this
  }
  def goalCell(tri: Int):Cell={
    if(tri==1) {
      for(c<-getOpenCellsOfTriangle(1))
        if(c.getOccupant==None || !(c.getOccupant.get.getColor== "blue")) return c
      getCell(5,4)
    }
    else if(tri==0){
      for(c<-getOpenCellsOfTriangle(0))
        if(c.getOccupant== None || !(c.getOccupant.get.getColor== "yellow")) return c
      getCell(4,5)
    }
    else if(tri==3){
      for(c<-getOpenCellsOfTriangle(3))
        if(c.getOccupant==None || !(c.getOccupant.get.getColor== "red")) return c
      getCell(11,12)
    }
    else {//}if(tri==2){
      for(c<-getOpenCellsOfTriangle(2))
        if(c.getOccupant==None || !(c.getOccupant.get.getColor== "green")) return c
      getCell(12,11)
    }
  }
  val cx= new Cell(-1,-1,None)
  def getCell(x:Int, y:Int): Cell={
    if(x==4 &&y==0) c40
    else if(x==4&&y==1) c41
    else if(x==4&&y==2) c42
    else if(x==4&&y==3) c43
    else if(x==4&&y==4) c44
    else if(x==4&&y==5) c45
    else if(x==4&&y==6) c46
    else if(x==4&&y==7) c47
    else if(x==4&&y==8) c48
    else if(x==4&&y==9) c49
    else if(x==4&&y==10) c410
    else if(x==4&&y==11) c411
    else if(x==4&&y==12) c412
    else if(x==3&&y==4) c34
    else if(x==3&&y==5) c35
    else if(x==3&&y==6) c36
    else if(x==3&&y==7) c37
    else if(x==2&&y==4) c24
    else if(x==2&&y==5) c25
    else if(x==2&&y==6) c26
    else if(x==1&&y==4) c14
    else if(x==1&&y==5) c15
    else if(x==0&&y==4) c04
    else if(x==5&&y==1) c51
    else if(x==5&&y==2) c52
    else if(x==5&&y==3) c53
    else if(x==5&&y==4) c54
    else if(x==5&&y==5) c55
    else if(x==5&&y==6) c56
    else if(x==5&&y==7) c57
    else if(x==5&&y==8) c58
    else if(x==5&&y==9) c59
    else if(x==5&&y==10) c510
    else if(x==5&&y==11) c511
    else if(x==5&&y==12) c512
    else if(x==6&&y==2) c62
    else if(x==6&&y==3) c63
    else if(x==6&&y==4) c64
    else if(x==6&&y==5) c65
    else if(x==6&&y==6) c66
    else if(x==6&&y==7) c67
    else if(x==6&&y==8) c68
    else if(x==6&&y==9) c69
    else if(x==6&&y==10) c610
    else if(x==6&&y==11) c611
    else if(x==6&&y==12) c612
    else if(x==7&&y==3) c73
    else if(x==7&&y==4) c74
    else if(x==7&&y==5) c75
    else if(x==7&&y==6) c76
    else if(x==7&&y==7) c77
    else if(x==7&&y==8) c78
    else if(x==7&&y==9) c79
    else if(x==7&&y==10) c710
    else if(x==7&&y==11) c711
    else if(x==7&&y==12) c712
    else if(x==8&&y==4) c84
    else if(x==8&&y==5) c85
    else if(x==8&&y==6) c86
    else if(x==8&&y==7) c87
    else if(x==8&&y==8) c88
    else if(x==8&&y==9) c89
    else if(x==8&&y==10) c810
    else if(x==8&&y==11) c811
    else if(x==8&&y==12) c812
    else if(x==9&&y==4) c94
    else if(x==9&&y==5) c95
    else if(x==9&&y==6) c96
    else if(x==9&&y==7) c97
    else if(x==9&&y==8) c98
    else if(x==9&&y==9) c99
    else if(x==9&&y==10) c910
    else if(x==9&&y==11) c911
    else if(x==9&&y==12) c912
    else if(x==9&&y==13) c913
    else if(x==10&&y==4) c104
    else if(x==10&&y==5) c105
    else if(x==10&&y==6) c106
    else if(x==10&&y==7) c107
    else if(x==10&&y==8) c108
    else if(x==10&&y==9) c109
    else if(x==10&&y==10) c1010
    else if(x==10&&y==11) c1011
    else if(x==10&&y==12) c1012
    else if(x==10&&y==13) c1013
    else if(x==10&&y==14) c1014
    else if(x==11&&y==4) c114
    else if(x==11&&y==5) c115
    else if(x==11&&y==6) c116
    else if(x==11&&y==7) c117
    else if(x==11&&y==8) c118
    else if(x==11&&y==9) c119
    else if(x==11&&y==10) c1110
    else if(x==11&&y==11) c1111
    else if(x==11&&y==12) c1112
    else if(x==11&&y==13) c1113
    else if(x==11&&y==14) c1114
    else if(x==11&&y==15) c1115
    else if(x==12&&y==4) c124
    else if(x==12&&y==5) c125
    else if(x==12&&y==6) c126
    else if(x==12&&y==7) c127
    else if(x==12&&y==8) c128
    else if(x==12&&y==9) c129
    else if(x==12&&y==10) c1210
    else if(x==12&&y==11) c1211
    else if(x==12&&y==12) c1212
    else if(x==12&&y==13) c1213
    else if(x==12&&y==14) c1214
    else if(x==12&&y==15) c1215
    else if(x==12&&y==16) c1216
    else if(x==13&&y==9) c139
    else if(x==13&&y==10) c1310
    else if(x==13&&y==11) c1311
    else if(x==13&&y==12) c1312
    else if(x==14&&y==10) c1410
    else if(x==14&&y==11) c1411
    else if(x==14&&y==12) c1412
    else if(x==15&&y==11) c1511
    else if(x==15&&y==12) c1512
    else if(x==16 && y== 12) c1612
    else cx
  }
  def rewrite(newBoard: Board)={
    boardArray = newBoard.getBoard
  }
}