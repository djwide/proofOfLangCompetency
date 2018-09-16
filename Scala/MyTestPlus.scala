package Milestone4


import org.scalatest.FunSpec
import org.scalatest.Matchers
import org.scalatest.Assertions._



class Milestone4Test extends FunSpec with Matchers{
  val simCont= new simController
  simCont.move(simCont.getGameArea.getPlayers(0).getPieces(0), simCont.getGameArea.getBoard.getCell(10,10))
  simCont.showPlayingArea
    
  describe("SHOW PLAYING AREA"){
    it("displays everything necessary to observe the progress of the game"){
      val simCont= new simController
      assert(simCont.showPlayingArea.contains("    ---------bbbb"))
    }
  }
  describe("SHOW PLAYER ORDER") {
    it("shows player names in the order that they will play"){
      val pQ= new PlayerQueue
      assert(pQ.showQ =="3012"||pQ.showQ == "2301"||pQ.showQ =="1230"||pQ.showQ =="0123")
    }
  }
  describe("ADVANCE ORDER") {
    it("moves the player who is currently up to the end of the playing order, and advances the next player to be up"){
      val pQ= new PlayerQueue
      val head= pQ.showQ(0)
      val nextInLine= pQ.showQ(1)
      pQ.advance
      val newQ= pQ.showQ   
      assert(newQ(0)==nextInLine&&newQ(3)==head)
    }
  }
  describe("INITIALIZE GAME"){  
    it("performs all actions necessary to prepare the game for the first move (deal cards, place tokens in initial spots, etc.); can also be used to reset the game simulation"){
      val simCont= new simController
      assert(!(simCont.getGameArea.getBoard.isEmpty || simCont.getGameArea.getPlayers.isEmpty||simCont.getGameArea.getBoard.getPieces.isEmpty))
    }
  }
  
  describe("DO MOVE - the player"){ 
    it("who is currently up in the player order performs all move actions, and the player order advances"){
      val simCont= new simController
      var lastBoard= simCont.showPlayingArea
      simCont.move(simCont.getGameArea.getPlayers(0).getPieces(0), simCont.getGameArea.getBoard.getCell(10,10))
      assert(simCont.getGameArea.getBoard.getCell(10,10).isOccupied==true&&simCont.getGameArea.getPlayers(0).getPieces(0).getCell.getCoords==(10,10))
    }
  }
  describe("DO TURN") {
    it("performs DO MOVE four times, as well as CHECK FOR WINNER at appropriate times"){
      val simCont= new simController
      var count= 0
      var lastBoard= simCont.showPlayingArea
      while(count < 4){
        simCont.advanceMove
        count= count +1
      }
      assert(lastBoard!=simCont.showPlayingArea)
    }
  }
  describe("CHECK FOR WINNER"){
    it("determine whether any player has won the game, and if so, identity that player"){
      val simCont= new simController
      println(simCont.getWinner)
      assert(simCont.getWinner =="red" ||simCont.getWinner =="green" || simCont.getWinner =="yellow" ||simCont.getWinner =="blue" ||simCont.getWinner =="not over til it's over")
    }
  }

   describe("DO GAME") {
    it("performs DO TURN until the game is won"){
      val simCont= new simController
      while(simCont.gameState!="finished"){
        simCont.advanceRound
      }
      //val bool1 = simCont.getGameArea.getBoard.noPiecesInTriangle(0)==10 && simCont.getGameArea.getBoard.getCellsOfTriangle(0)(0).getOccupant.get.getColor=="blue"
      //val bool2=simCont.getGameArea.getBoard.noPiecesInTriangle(1)==10 && simCont.getGameArea.getBoard.getCellsOfTriangle(0)(0).getOccupant.get.getColor=="yellow"
      //val bool3=simCont.getGameArea.getBoard.noPiecesInTriangle(2)==10 && simCont.getGameArea.getBoard.getCellsOfTriangle(0)(0).getOccupant.get.getColor=="red"
      //val bool4=simCont.getGameArea.getBoard.noPiecesInTriangle(3)==10 && simCont.getGameArea.getBoard.getCellsOfTriangle(0)(0).getOccupant.get.getColor=="green"
      assert(simCont.gameState=="finished")
    }
  }

   
}
/* 
  
  val simCont= new simController 
  val board= new Board()
  val scoreBoard= new Scoreboard()
  val (r,g,b,y) = (new Player(0, "red"), new Player(1,"green"), new Player(2,"blue"), new Player(3,"yellow"))
  val playerQ= new PlayerQueue
  val (c1010,c1212,c1213)= (new Cell(10,10,None),new Cell(12,12,None),new Cell(12,13,None))
  val (r1,b1)= (new Piece("red"), new Piece("blue"))    
  val movemaker= new Movemaker(board)
     
      
  describe("in its initial/ready-to-play state"){
    simCont.init
    describe("Sim Controller"){
      it("initiates"){
        assert(board!=null&& r.getColor=="red"&&board.c1010.getCoords._1==10)
      }
      it("displays a string describing initial game state"){ 
        assert(simCont.gameState== "Round 1")
      }
      val tempNum= simCont.getMoveNumber
      simCont. advanceMove
      it("advances a move"){
        assert(simCont.getMoveNumber== tempNum+1&&board.getBoard(3).mkString!="----------rrr-----")
      }
      simCont.backMove
      it("removes a move"){
        assert(board.getBoard(3).mkString=="----------rrr-----")
      }
      val tempNum2= simCont.getRoundNumber
      simCont. advanceRound
      it("advances a round"){
        assert(tempNum2 +1== simCont.getRoundNumber)
      }
      simCont.backRound
      it("removes a Round"){
        assert(board.getBoard(3).mkString=="----------rrr-----")
      }
      it("completes a whole game"){
        assert(simCont.gameState=="Complete"&& board.noPiecesInTriangle(r.objTriangle)==10 && board.noPiecesInTriangle(g.objTriangle)==10&& board.noPiecesInTriangle(b.objTriangle)==10&& board.noPiecesInTriangle(y.objTriangle)==10)
      }
    }
    describe("A Player"){
      it("has 10 pieces in its home triagle"){
        assert(r.numPiecesHome(board) == 10)
      }
      it("has a score of zero"){
        assert(r.score==0)
      }
      it("can do a move"){
        assert(r.canMove(board)==true)
      }
    }
    
    describe("A Board"){
      it("has a home triangle full for each (4) player"){
        assert(board.getCellsOfTriangle(0).size==10&& board.getCellsOfTriangle(1).size==10&&board.getCellsOfTriangle(2).size==10 && board.getCellsOfTriangle(3).size==10)
      }
      it("shows proper representation of the board"){
        assert(simCont.show(board).contains("----------rrr----"))
      }
    }

    describe("A ScoreBoard"){
      it("shows all scores= 0"){
        assert(scoreBoard.showScoreboard(r,g,b,y) =="r:0, g:0, b:0, y:0")
      }
      it("shows control advanceMove"){
        assert(scoreBoard.showControls.contains("Advance a Move"))
      }
      it("shows control advanceRound"){
        assert(scoreBoard.showControls.contains("Advance a Round"))
      }
      it("shows control runGame"){
        assert(scoreBoard.showControls.contains("Run Game"))
      }
      it("shows players"){
        assert(scoreBoard.showPlayers== "r,g,b,y")
      }
      it("returns a players score"){
        assert(scoreBoard.playerScore(r)==0)
      }
    }
     
   
    describe("Player Queue"){
      it("gives current player"){
        assert(playerQ.current==r)
      }
      it("displays the current order"){
        assert(playerQ.showQ=="rgby")
      }
    }
    
    describe("Cell"){
      it("has coordinates"){
        assert(c1010.getCoords==(10,10))
      }
      it("has a false isOccupied (within hexagon)"){
        assert(c1010.isOccupied==false)
       }
    }
    describe("A Piece"){
      it("has a color assigned"){
        assert(b1.getColor=='b')
      }
      it("can find it's coordinates"){
        assert(b1.getCell!=null)
      }        
      it("can determine whether it can move"){
        assert(r1.canMove(board))
      }
    }
  }
   
  val tempTester= playerQ.current
  simCont.advanceMove
     
  describe("After first move"){
    
    describe("A Player"){
      it("can select a legal move"){
        assert(r.getMove!=null)  
      }
      val temp3=r.movePiece(r1,9,9, board)
      it("can do a move"){
        assert(temp3!=null)
      }
      //it("can place their next piece on the board"){
        //assert(r== board)
      //}
    }
     
    describe("A Board"){
      it("has nine pieces in one home triangle and 10 in the other three"){
        assert(board.noPiecesInTriangle(0)==1||board.noPiecesInTriangle(1)==1||board.noPiecesInTriangle(2)==1||board.noPiecesInTriangle(3)==1)
      }
    }
    
    describe("Player Order"){
      it("advances & gives a new current player"){
        assert(playerQ.current.getColor!= tempTester.getColor)
      }
    }
    describe("Cell"){
      describe("once a piece is moved there"){
        it("has a true is Occupied"){
          assert(c1010.isOccupied==true)  
        }
      }
    }
  }

  describe("after a jump"){
    movemaker.makeMove(b1,c1010)
    describe("Piece"){
      it("the moved piece is on the opposite side of the jumped piece"){
        assert(b1.getCell.getCoords._1==10 && b1.getCell.getCoords._2==10)
      }
    }
  }
  while(r.score==0) simCont.advanceMove
  val anotherTemp= board.piecesInRhombus
  simCont.backMove
  describe("after first score"){
    describe("board"){
      it("has one fewer piece in the main hexagon"){
      assert(anotherTemp!=board.piecesInRhombus)
      }
      it("has one piece in a triangle that's not it's home"){fail}
    }
    describe("A ScoreBoard"){
      describe("once the first player scores"){
        it("indicates score change"){fail}
      } 
    }
  }
while(!(r.isDone(board) || g.isDone(board) || b.isDone(board) ||y.isDone(board))) simCont.advanceMove  
  describe("After a blocked player") { 
    describe("PlayerQueue"){
        it("player is removed from order"){
          assert(playerQ.size==3)
        }
      }
    describe("Player"){
      it("has no pieces showing in the main hexagon"){
        board.piecesInRhombus==0
      }
      it("all pieces are in the opposing triangle"){
        board.noPiecesInTriangle(r.objTriangle)
      }
    }
    describe("Scoreboard"){
      it("indicates finished player is blocked"){
        assert(scoreBoard.showScoreboard(r,g,b,y).contains("finished"))
      }
    }
    simCont.doGame
    describe("End of the Game"){
      describe("decide winner"){
        assert(((simCont.giveWinner=="red"&&board.noPiecesInTriangle(r.objTriangle)==10)||(simCont.giveWinner=="blue"&&board.noPiecesInTriangle(b.objTriangle)==10)||(simCont.giveWinner=="green"&&board.noPiecesInTriangle(g.objTriangle)==10)||(simCont.giveWinner=="yellow"&&board.noPiecesInTriangle(y.objTriangle)==10)))
      }
    }
  }*/
