// CS478: Homework 9 XC

var userName = "David Weidman"

// def dangerous defined on WPR.  Returns boolean for whether a RegExp is "dangerous"
// def canBeEmpty definied on WPR. Returns boolean for whether a RegExp can be empty
// Efficiency can be greatly increased if I did not reuse WPR functions but it seems like that was implicit in the instructions
// assumes no Alt(Eps, Eps)* or Concat(Eps,Eps)* because that would be foolish for that to occur

def dedangerify(regex: RegExp): RegExp = {
	def transformer(regex2: RegExp): RegExp= e match{
		case Letter(c)=> Letter(c)
		case Alt(r1,r2)=> //if (r1==Epsilon && r2==Epsilon) Epsilon
		  if (r1==Epsilon) 
			if (canBeEmpty(r2)) transformer(r2)
			else r2 
		  else if (r2==Epsilon)
			if (canBeEmpty(r1)) transformer(r1)
			else r1
		  else if (canBeEmpty(r1) && canBeEmpty(r2)) Alt(transformer(r1),transformer(r2))
		  else if (canBeEmpty(r1)) Alt(transformer(r1), r2)
		  else if (canBeEmpty(r2)) Alt(r1,transformer(r2))
		  else Alt(r1,r2) //shouldnt occur but we'll eave it in there for safe measure
		case Concat(r1,r2)=> 
		  if (r1==Epsilon) 
			if (canBeEmpty(r2)) transformer(r2)
			else r2 
		  else if (r2==Epsilon)
			if (canBeEmpty(r1)) transformer(r1)
			else r1
		  else if (canBeEmpty(r1) && canBeEmpty(r2)) Concat(transformer(r1),transformer(r2))
		  else if (canBeEmpty(r1)) Concat(transformer(r1), r2)
		  else if (canBeEmpty(r2)) Concat(r1,transformer(r2))
		  else Concat(r1,r2)
		case Star(r)=> dedangerify(r)
	}
	regex match{
		case Epsilon=> Epsilon
		case Letter(c)=> Letter(c)
		case Alt(r1,r2)=> 
			if (dangerous(regex)) Alt(dedangerify(r1), dedangerify(r2))
			else Alt(r1,r2)
		case Concat(r1,r2)=> 
			if (dangerous(regex)) Concat(dedangerify(r1), dedangerify(r2))
			else Alt(r1,r2)
		case Star(r)=> 
			if (r== Epsilon) Epsilon
			else if (dangerous(regex)) Star(transformer(r))
			else Star(r)
		}
}
