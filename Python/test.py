from sympy import solve, symbols
x=symbols('x')
y=solve(((x-5)/20)**10-3,x)
print(y)
#print(solve(((x-5)/20)**10+((x-4)/20)**10-3,x))