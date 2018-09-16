//David Weidman Final  24NOV14

package players.AntieAnneAndThePretzels

import scant._
import awannotation.AntWarsPlayer

@AntWarsPlayer
class AntieAnneAndThePretzels extends Queen {
  private var turnCount =0 //overall counter
  private var loopCount=0 //counter for main run loop
  private var countMB=0 //counter used to rotate through madameButterflys
  private var hDir =true //alternates Hermes spin
  private var guardTimer=0 //allows KevinCostnerInBodyGuard to hatch
  private var steadyHealth=25 //sets origanl health
  private var msg=0 //supports more a complicated message system. Not implemented in the beta. gives each finder a unique signature
  
  def takeTurn {
	turnCount= turnCount+1
	if (health<steadyHealth) {//initiate sequence if queen is attacked
		guardTimer=1
		layEgg(new Schmiegel)
	}
	else if (guardTimer !=0){//queen defence sequence part deux
		if (guardTimer<30) guardTimer= guardTimer+1
		else guardTimer= 0
		layEgg(new KevinCostnerInBodyGuard)
	}
	steadyHealth= health
	//opening sequence. Go after the built in food caches
	if (turnCount<80){
		if ((countMB/21)%3==0){
			layEgg(new madameButterfly(0))
			countMB=countMB+1
		}
		else if ((countMB/21)%3==1){
			layEgg(new madameButterfly(1))
			countMB=countMB+1
		}
		else if ((countMB/21)%3==2){ 
			layEgg(new madameButterfly(2))
			countMB=countMB+1
		}
	}
	else{//mainLoop
		loopCount= (loopCount+1)%250
		if (loopCount<18){ // 2 opposite "spinning" Hermeses
			if (hDir==true){
				hDir= false
				layEgg(new Hermes(msg%255+1, South))
			}
			else {
				hDir= true
				layEgg(new Hermes(msg%255+1, North))
			}
			msg=msg+1
		}
		else if (loopCount<160) layEgg(new Brunhilda) //several Brunhildas
		else layEgg(new Lancelot) //one attacker (Lancelot)
    }
  }
}

abstract class mobileAnt extends Ant{
	strength = 1
	health =10
	def scanEnemy() :Option[Direction]= {
		if (lookForEnemy(North)) Some(North)
		else if( lookForEnemy(South)) Some(South)
		else if( lookForEnemy(East)) Some(East)
		else if( lookForEnemy(West)) Some(West)
		else None
	}
	def scanFood() :Option[Direction]= {
		if (lookForFood(North)>0) Some(North)
		else if( lookForFood(South)>0) Some(South)
		else if( lookForFood(East)>0) Some(East)
		else if( lookForFood(West)>0) Some(West)
		else None
	}
	def scanMessage() :Option[Int]=
		if (lookForMessage(North)>0) Some(lookForMessage(North))
		else if(lookForMessage(South)>0) Some(lookForMessage(South))
		else if(lookForMessage(East)>0) Some(lookForMessage(East))
		else if(lookForMessage(West)>0) Some(lookForMessage(West))
		else None

	def kamikaze:Unit= //go attack queen/kill yourself
		if (scanEnemy != None) attack(scanEnemy.get)
		else if (eastOfQueen <40) Move(East)
		else if (northOfQueen< -1) Move(North)
		else Move(South)
		
	def Move(dir: Direction):Unit= {//  move with -exception- handling
		if (dir==North)
			if (lookForEnemy(dir)) move(East)
			else if (lookForFriend(dir)) move(East)
			else if (lookForWall(dir)) move(East)
			else move(dir) 
		else if (dir==East)
			if (lookForEnemy(dir)) move(North)
			else if (lookForFriend(dir)) move(North)
			else if (lookForWall(dir)) move(North)
			else move(dir)
		else if (dir==South)
			if (lookForEnemy(dir)) move(East)
			else if (lookForFriend(dir)) move(East)
			else if (lookForWall(dir)) move(East)
			else move(dir)
		else
			if (lookForEnemy(dir)) move(South)
			else if (lookForFriend(dir)) move(South)
			else if (lookForWall(dir) ) move(South)
			else move(dir)
	}
	//def returnToQueen if I had time
		
}


//fighters
abstract class fighter extends mobileAnt{
	def flankQueen= //attack queen from egg side
		if (eastOfQueen ==40 && northOfQueen== -1) attack(North)
		else if (eastOfQueen==40) Move(North)
		else if (northOfQueen< -3) Move(North)
		else if (northOfQueen> -3) Move(South)
		else Move(East)
	
	def blockEgg= //park on the hatch spot
		if (eastOfQueen ==40 && northOfQueen== -1) println("howpass")
		else if (eastOfQueen==40&& northOfQueen== -2&& lookForEnemy(North)) attack(North)
		else if (northOfQueen< -3 ||eastOfQueen==40) Move(North)
		else if (northOfQueen> -3) Move(South)
		else Move(East)
}

class pawn extends fighter {//weak fighter
  private var turnCount =0
  icon= 'b'
  health=1
  strength = 1
  def takeTurn {
    flankQueen
  }
}

class Lancelot extends fighter {//strong fighter
  private var turnCount =0
  icon= 'B'
  strength = 25
  health=50
  def takeTurn {
    flankQueen
  }
}

abstract class bodyguard extends fighter{
	private var switch = true
	def roam=//
		if (scanEnemy==None)
			if (eastOfQueen<1) Move(East)
			else if (eastOfQueen>1) Move(West)
			else if (northOfQueen== -2) {
				switch= !switch
				Move(North)
			}
			else if (northOfQueen== 2) {
				switch= !switch
				Move(South)
			}
			else if (switch) Move(South)
			else Move(North)
		else attack(scanEnemy.get)
}

class KevinCostnerInBodyGuard extends bodyguard{ //strong bodyGuard
	icon= 'w'
	strength=20
	health= 15
	def takeTurn =roam
}

class Schmiegel extends bodyguard{ //crappy bodyGuard
	icon= 's'
	strength=5
	health= 5
	def takeTurn =roam
}

//Foragers (RntUs)

//named after a character who killed herself after no longer being needed
class madameButterfly(dVal: Int ) extends mobileAnt { //heads straight to built in caches
	private var dirVal= dVal
	private var useless=false
	capacity = 500 
	if (dVal==0) icon = 'E'
	else if (dVal==1) icon= 'S'
	else icon= 'N'
	/*def rotateCW(dir: Direction): Direction={
		if (dir==North) East
		else if (dir==East) South
		else if (dir==South) West
		else North
	}
	def rotateCCW(dir: Direction): Direction={
		if (dir==North) West
		else if (dir==East) North
		else if (dir==South) East
		else South
	}
	*/
	def takeTurn {
		if (scanFood == None ||food == capacity)  //allows for a scanner when not busy otherwise
			//East
			if (dirVal==0) 
				if (useless) kamikaze
				else if (food==capacity){
					if ((eastOfQueen==20&&northOfQueen==1) && lookForFood(South) ==0) dirVal=1
					if (eastOfQueen==20 && (northOfQueen== 0||northOfQueen== 1)) Move(North) //sidestep potential blockers
					else if (eastOfQueen>1) Move(West)
					else if (northOfQueen>1) Move(South)
					else if (northOfQueen< -1) Move(North)
					else drop
				}
				else
					if (lookForFood(Here)>0) pickup
					else if (eastOfQueen==20 && northOfQueen> 0) Move(South)
					else if (northOfQueen> 2) Move(South)
					else if (northOfQueen< 2) Move(North)
					else if (eastOfQueen>20) move(West)
					else if (lookForFood(Here)>0&& eastOfQueen==20&&northOfQueen==0) useless=true
					else Move(East)
			//South
			else if (dirVal==1)
				if (useless) kamikaze
				else if (food==capacity){
					if ((eastOfQueen==20 && northOfQueen== -9 )&& lookForFood(South) ==0) dirVal=2
					if (eastOfQueen==20 && (northOfQueen== -10||northOfQueen== -9)) Move(North)
					else if (eastOfQueen>1) Move(West)
					else if (northOfQueen < -1) Move(North)
					else if (northOfQueen>1) Move(South)
					else drop
				}
				else
					if (lookForFood(Here)>0) pickup
					else if (eastOfQueen==20 && northOfQueen> -10) Move(South)
					else if (northOfQueen> -8) Move(South)//local move count and total movecount
					else if (eastOfQueen>20) Move(West)
					else if (lookForFood(Here)>0&& eastOfQueen==20&&northOfQueen== -10) useless=true
					else Move(East)///////////look around
			//North
			else
				if (useless) kamikaze
				else if (food==capacity){
					if ((eastOfQueen==20&& northOfQueen== 9) && lookForFood(North) ==0) dirVal=0
					if (eastOfQueen==20 && (northOfQueen== 10||northOfQueen== 9)) Move(South)
					else if (eastOfQueen>1) Move(West)
					else if (northOfQueen >1) Move(South)
					else if (northOfQueen < -1) Move(North)
					else drop
				}
				else
					if (lookForFood(Here)>0) pickup
					else if (eastOfQueen==20 && northOfQueen< 10) Move(North)
					else if (northOfQueen< 8) Move(North)
					else if (eastOfQueen>20) Move(West)
					else if (lookForFood(Here)>0&& eastOfQueen==20&&northOfQueen== 10) useless=true
					else Move(East)
		else Move(scanFood.get)
	}
}

//named for messenger god
class Hermes(msg: Int, orient: Direction) extends mobileAnt {//finds new food caches
  private var spin =1
  if (orient ==North) spin= -1  //used to tweak routes
  icon='H'
  private var m= msg //not really useful in the beta
  private var found= false 
  private var lastEast=0
  private var ret =true  //used to not double check same columns
  health= 1
  def takeTurn {
	var loc= Tuple2(eastOfQueen,northOfQueen) //experimental. I decided against it
	if (eastOfQueen==lastEast) ret=true
	if (found == true) {
		if (loc._1>1){
			leaveMessage(m)
			Move(West)
		}
		else {
			drop
			m= (m+1)%256
			found =false
		}
	}
	else if (lookForFood(Here)>0 && lookForMessage(Here)==0){ //don't double mark a cache
		lastEast = eastOfQueen
		ret = false
		found= true
		leaveMessage(m)
		Move(West)
	}
	else if (scanFood!=None&& lookForMessage(scanFood.get)==0) Move(scanFood.get) //scanner
	else 
		if (ret== false && eastOfQueen<lastEast) Move(East)  //skip already checked columns
		else
			//hardcode search path
			if (((loc._1>=0 && loc._1<=2+spin)&&loc._2 == 1)||
				((loc._1>=2+spin&&loc._1<=5+spin)&& loc._2 == -15*spin)|| //was going to make a funnel
				((loc._1>=5+spin&&loc._1<=8+spin)&& loc._2 == 19*spin)||  //shape but I decided 19 for 
				((loc._1>=8+spin&&loc._1<=11+spin)&& loc._2 == -19*spin)||  // almost all isn't that
				((loc._1>=11+spin&&loc._1<=14+spin)&& loc._2 == 19*spin)|| // inneficient
				((loc._1>=14+spin&&loc._1<=17+spin)&& loc._2 == -19*spin)||
				((loc._1>=17+spin&&loc._1<=20+spin)&& loc._2 == 19*spin)||
				((loc._1>=20+spin&&loc._1<=23+spin)&& loc._2 == -19*spin)||
				((loc._1>=23+spin&&loc._1<=26+spin)&& loc._2 == 19*spin)||
				((loc._1>=26+spin&&loc._1<=29+spin)&& loc._2 == -19*spin)||
				((loc._1>=29+spin&&loc._1<=32+spin)&& loc._2 == 19*spin)||
				((loc._1>=32+spin&&loc._1<=35+spin)&& loc._2 == -19*spin)||
				((loc._1>=35+spin&&loc._1<=38+spin)&& loc._2 == 19*spin)
				) Move(East)
			else if (Range(3+spin,41,6).contains(loc._1)) Move(orient)
			else if (Range(6+spin,41,6).contains(loc._1))
				if (orient==South)  Move(North)
				else  Move(South)
			else  Move(East)
  }
}

//named for the retriever of dead warriors in Norse mythology
class Brunhilda extends mobileAnt { //follows paths and retrieves food
  capacity=1000
  icon='B'
  private var msg: Option[Int]= None
  private var lastMove: Direction = null //in order to not retrace
  private var switch=true
  override def Move(dir: Direction):Unit= { //special Move for switching direction at walls
		if (dir==North)
			if (lookForEnemy(dir))  move(East)
			else if (lookForFriend(dir))  move(East)
			else if (lookForWall(dir)) {
				move(East)
				switch = !switch
			}
			else move(dir) 
		else if (dir==East)
			if (lookForEnemy(dir))  move(North)
			else if (lookForFriend(dir)) move(North)
			else if (lookForWall(dir)) move(North)
			else move(dir)
		else if (dir==South)
			if (lookForEnemy(dir))  move(East)
			else if (lookForFriend(dir))  move(East)
			else if (lookForWall(dir)){
				 move(East)
				switch = !switch
			}
			else move(dir)
		else
			if (lookForEnemy(dir))  move(South)
			else if (lookForFriend(dir))  move(South)
			else if (lookForWall(dir) ) move(South)
			else move(dir)
	}

  def takeTurn {
	if (food>0)//return to Queen
		if (eastOfQueen>1)  Move(West)
		else if (northOfQueen>1)  Move(South)
		else if (northOfQueen< -1)  Move(North)
		else drop
	else
		if (lookForFood(Here)>0) pickup
		else if (msg!=None)
			if (lastMove!= North && lookForMessage(South)==msg.get) {//this was a pain
				lastMove=South
				Move(South)
			}
			else if (lastMove!= West && lookForMessage(East)==msg.get){
				lastMove=East
				 Move(East)
			}
			else if (lastMove!= East && lookForMessage(West)==msg.get) {
				lastMove=West
				Move(West)
			}
			else if (lastMove!= South && lookForMessage(North)==msg.get){
				lastMove=North
				Move(North)
			}
			else {
				msg= scanMessage
				lastMove= null
			}
		else if (eastOfQueen==1 && switch){
			Move(North)
			msg= scanMessage
		}
		else if (eastOfQueen==1){
			Move(South)
			msg= scanMessage
		}
		else if (eastOfQueen==0) {
			Move(East)
			msg= scanMessage
		}
		else {
			Move(West)
			msg= scanMessage
		}
  }
}
