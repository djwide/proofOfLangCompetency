def factorial(n: Int, cont: Cont[Int]): Unit=
	if(n==0) cont(1)
	else factorial(n-1, tmp=>
		mult(n,tmp, result=> 
			cont(result)))
			
def fib(n: Int, cont: Cont[Int]): Unit={
	if (n<2) rtrn(1,cont)
	else fib(n-1, f1=>
		add(f1,f2,result=> 
			rtrn(result,cont)))
}