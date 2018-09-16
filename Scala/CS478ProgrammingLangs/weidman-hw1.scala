/**
* David Weidman
**/


import scala.io.Source

object regExercise{
	def main(args: Array[String]){
		val fileStr= Source.fromFile(args(0)).mkString
		var solList= List.empty[String]
		print(fileStr)
		val eList= fileStr.split(" ")
		for(x <- eList)
			if(x.matches("[^ ]*@[uU][sS][mM][aA].[eE][dD][uU]"))solList=solList:+x
		print(solList.mkString("\n"))
		
	}
}

/**
Results
NAME             CLASS CO EMAIL                     FOS 1 SECT DETAILS 
ANDERSON, THOMAS 2013  B2 Thomas.Anderson2@usma.edu ITE0  C1   details
----------------------------------------------------------------------
GREY, JEAN       2013  E1 x39541@usma.edu           CSC0  C1   details
----------------------------------------------------------------------
GRUBER, HANS     2013  G3 HANS.GRUBER@USMA.EDU      EEN0  D2   details
----------------------------------------------------------------------
Thomas.Anderson2@usma.edu
x39541@usma.edu
HANS.GRUBER@USMA.EDU

A:
Homework 1
Name: David Weidman

Problem #1: B*(A+(B?|BBB+))*B*
Correct!

Problem #2: (BB)*B?A(BB)*B?(A(BB)*B?A(BB)*B?)*
Incorrect result on input "A".
Your regular expression ACCEPTS this input but should not.

Problem #3: <NONE>
Must fill in answer first!
**/