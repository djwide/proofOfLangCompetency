//David Weidman HW15 Redacted & Tests

def redacted(redact: String, unredact: String):Boolean={
	val (rLen, uLen)= (redact.length, unredact.length)
	var (rCount,uCount,star)= (0,0,false)
	while(rCount+1< rLen && uCount+1 < uLen){
		star= false
		var (r,u)= (redact(rCount), unredact(uCount))
		while (r=='*'&& rCount+1< rLen && uCount+1 < uLen){
			rCount+=1
			uCount+=1
			r= redact(rCount)
			u= unredact(uCount)
			star= true
		}
		while(r!=u && uCount+1 < uLen&& star ==true){//&& unredact.substring(uCount+1).contains(r)) {
			uCount+=1
			u= unredact(uCount)
		}			
		rCount+=1
		uCount+=1
	}
	if(rCount==rLen&& uCount==uLen)true
	else false
}

println(redacted("a*d","abcd")+" should be true")
println(redacted("a*d","abcde")+ " should be false")
println(redacted("a*d*","abcde")+" should be true")
println(redacted("*a*d","abcd")+" should be false")
println(redacted("a**d","abcd")+" should be true")
println(redacted("a***d","abcd")+" should be false")
println(redacted("a**d","abcdd")+" should be true")
println("")
println(redacted("I ha*eam","I have a dream")+" should be true")
println(redacted("I ha*eam","I had ice cream")+" should be true")
println(redacted("I ha*eam","I hate your football team")+" should be true")
println(redacted("I ha*eam","I hope we have ice cream")+" should be false")
println(redacted("I ha*eam","I haem")+" should be false")
println(redacted("I ha*eam","Loo, a squirrel!")+" should be false")