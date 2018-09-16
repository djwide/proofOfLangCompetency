// CS478 Homework 9

def userName = "David Weidman"

//using the Trie Maj Quimby so nicely taught us about in data structures
case class T(winning: Int, children: Map[Char,T]) 
val empty = T(false,Map.empty)
var root = empty

/*
/		0	3	6
/		1	4	7
/		2	5	8
*/

//Part 1

trait GameBoard{
	def whoseTurn() :Int //1 player x, -1 player o
	def winState(): Int
	//is one player guaranteed to win (has won)? if so which one
	def openSpaces():String 
	def spacesTaken():String //said in Forest Gump school bus kid voice
}
//GameBoard is a String of which moves have been played x (arbitrary mark type1)
//  will be the even entries and o (arbitrary mark type2) will be odd

//Part2

//high resource.  Take trie to its base
//Obama v Xi Jinping. Winner take all
public class bruteForce extends GameBoard {
	def buildTrie(depth:Int, curState: String) : T	
	//reset root to current state e.g. "123" are the first 3 moves, returns root
	// makes a trie of all possible results. compresses at every step forward
	//labels at every step bottom-up 1 for even arbitrary human label win state 0 for undetermined -1 for odd
	def label():Unit
	//if 3 i a row or al children winning state of one type label win for that type
	def sameState(t1:T,t2:T) :Boolean 
	//takes into account radial symmetry and possibility of different routes same state
	def whatDo() :Char //move suggestion
}
//with step by step compression could this be done on a labtop?




//Part3
//play for the tie, that way everyone's a winner

object greedyDefense extends GameBoard {
	def doIhave2withAnOpening() :Char //nextMoveWin, -1 for no val
	def doesOpponent() :Char //imminent loss
	def Opp1with2():Char //An (x|o) with two more openings. Choose an opening
	def Me1with2():Char
	def whatDo() :Char 
	//look at options from top to bottom ^^.  If none are satisfied default to middle 
	//board then corners.
}
//check for obvious win or loss. then hardcode heuristics.  With defense being priority







