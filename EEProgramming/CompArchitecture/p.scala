def shapes(n: Int):Int={
	if(n==0)0
	else if(n==1)1
	else 2*shapes(n-1)+shapes(n-2)
}