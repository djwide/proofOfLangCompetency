import scala.util.matching.Regex
import scala.collection.mutable
import java.io._
import scala.util.control.Breaks._


package celebs { 
	class Agent extends Player{

		def getGuess(clue: String): String = {
			//split clue into repsective hints
			val clueList= clue.split(" ")
			var (c1, c2)=clueList.splitAt(clueList.indexOf("meets"))
			var C1= c1.mkString("+")		
			var C2= c2.drop(1).mkString("+")

			//for(x<-C1) if(!x.isLetterOrDigit) C1.replace(x.toString, x.toString.toHexString)

			//convert hints to Bing searches
			val c1URL="http://www.bing.com/search?q=+"+C1+"+wiki"
			println(c1URL)
			readWrite(c1URL, "resource/clueFiles/bingResults1.txt")

			val c2URL= "http://www.bing.com/search?q=+"+C2+"+wiki"
			readWrite(c2URL, "resource/clueFiles/bingResults2.txt")
			println(c2URL)
			println()



			//search the bing results for links
			val wiki = new Regex("href=\"http://"+".................................................................................................................................................................")//en.wikipedia.org/wiki/
			val src1= io.Source.fromFile("resource/clueFiles/bingResults1.txt").mkString
			var wikiLinkList1 =(wiki findAllIn src1)
			var data1=""
			var count= 0		
			for (link<-wikiLinkList1){				
				if(count<7){	
					var l= link.split(' ')(0).substring(6)
					l= l.substring(0,l.length-1)				
					data1 =data1+ io.Source.fromURL(l).mkString
					println(l)
					count= count+1
				}
			}
			

			val src2= io.Source.fromFile("resource/clueFiles/bingResults2.txt").mkString
			var wikiLinkList2 =(wiki findAllIn src2)
			var data2=""
			count= 0			
			for (link<-wikiLinkList2){
				if(count<5 ){//& io.Source.fromURL(l)
					var l= link.split(' ')(0).substring(6)
					l= l.substring(0,l.length-1)				
					data2 =data2+ io.Source.fromURL(l).mkString
					println(l)					
					count= count+1
				}
			}
			

			//insert acquired HTMLs into txt files
			scala.tools.nsc.io.File("resource/clueFiles/wiki1.txt").writeAll(data1)
			scala.tools.nsc.io.File("resource/clueFiles/wiki2.txt").writeAll(data2)
		



			//call nameFinder
			var clue1 = "resource/clueFiles/wiki1.txt"
			var clue2 = "resource/clueFiles/wiki2.txt"
			val names1 =findNames(clue1)
			println(names1)
			val names2 =findNames(clue2)
			println(names2)



			//use return names to find intersect and therefore common middle name
			val sol= names1.keys.toSet.intersect(names2.keys.toSet)
			val solMap = mutable.Map[String,Int]()
			for(name <- sol) solMap+=name->(names1(name)+names2(name))
			println(sol)
			var midName=""
			if(sol.isEmpty) return "I give Up"
			else midName = solMap.maxBy(_._2)._1


			//find last name
			val pattern = new Regex(midName+"...............")
			val str= io.Source.fromFile(clue2).mkString
			val lastnameStr =(pattern findFirstIn str).toString
			var new1Str= ""
			for(char<- lastnameStr)if(!char.isLetter)new1Str+=" "else new1Str+=char
			val lastnameL= new1Str.split(" ")
			val sol2= midName+ " "+ lastnameL(2)


			//find first name
			val pattern2 = new Regex("..............."+midName)
			val str2= io.Source.fromFile(clue1).mkString
			val firstnameStr =(pattern2 findFirstIn str2).toString
			var new2Str= ""
			for(char2<- firstnameStr)if(!char2.isLetter)new2Str+=" "else new2Str+=char2
			val firstnameL= new2Str.split(" ")
			val solF= firstnameL(firstnameL.indexOf(midName)-1)+ " " +sol2
			solF
			 
		}
		//takes url source and puts it in a txt file
		def readWrite(url:String, file:String) = {
			val data = io.Source.fromURL(url).mkString
			scala.tools.nsc.io.File(file).writeAll(data)
		}




		def findNames(file: String):mutable.Map[String,Int]={
				
			val pattern = new Regex("(t|T)itle(=|:)....................|content....................|file....................|(B|b)y....................")//obviously not the prettiest way to write that ^^^
			val str= io.Source.fromFile(file).mkString
			val tList =(pattern findAllIn str).map(_.replace("\""," ")).map(_.split(" "))
			val wordStr=tList.map(x=>if(x.length>2)x.slice(1, 3).mkString(" ")).mkString(" ")
			var wordCounter= mutable.Map[String,Int]()		
			val namesArray= io.Source.fromFile("resource/common_names.txt").getLines.toArray		
			for(wrd <- wordStr.split(" ")){
				if(wordCounter.contains(wrd)) wordCounter+=wrd->(wordCounter(wrd)+1)
				else if(mySearch(namesArray, wrd)) wordCounter+=wrd->1
			}
			val finalLists=wordCounter.filter(_._2>4)
			finalLists
		
		}


		//binary search used for common names
		def mySearch(list: Array[String], target: String): Boolean = {
			var left = 0
			var right = list.length-1
			while (left<=right) {
				val mid = left + (right-left)/2
				if (list(mid)==target)
					return true
				else if (list(mid)>target)
					right = mid-1
				else
					left = mid+1
			}
			false
		}
	    
    
	}
}  
