####################
# Name: David Weidman
# File Name: hw2.py
####################

def Fibonacci(num):
  max = num-2
  val1 = 1
  val2 = 1
  temp = 0
  count = 0
  while count < max:
    temp = val1 + val2
    val1 = val2
    val2 = temp
    count = count +1
  return val2
  '''
  returns the nth Fibonacci number
  >>> Fibonacci(5)
  5
  >>> Fibonacci(8)
  21
  '''

  
def closestPrime(num):
  while num >1:
    stop = False
    x = num /2
    if x <= 2:
        return num
    while x > 2 and stop == False:
      if num % x == 0:
        stop = True
      else:
        x= x-1
      if x <= 2:
        return num
    num -= 1
    
    
        
  '''
  returns the closest prime (less than or equal) to a given number
  >>> closestPrime(6)
  5
  >>> closestPrime(34)
  31
  '''

def BMICalculator(weight,height):
  BMI = 703.0*weight/(height**2)
  print 'BMI is ', BMI
  if BMI < 18.5:
    print 'You are underweight.'
  elif BMI <= 24.9:
    print 'You are normal.'
  elif BMI <= 29.9:
    print 'You are overweight.'
  else:
    print 'You are obese.'
  
  '''
  displays the BMI of an individual, and their weight category.
  >>> BMICalculator(220,73)
  BMI is: 29.02
  You are overweight.
  '''


