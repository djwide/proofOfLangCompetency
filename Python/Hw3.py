####################
# Name: David Weidman
# File Name: Hw3.py
####################
import random


#NUMBER 1

'''
>>> tryMath() where the data entered are 1,1 and 1
2

>>> tryMath() where the data is 2.0, 2 and 2
Enter an integer -after 2.0
2

>>> tryMath() where the data is 2, 2 and 0
"Enter a non-zero integer" -after 0
'''

def tryMath(): 
  while True:
    try:
      a = int(raw_input('Give a number:'))
      break
    except ValueError:
      print "Enter an integer"
  while True:              
    try:
      b = int(raw_input('Give a number:'))
      break
    except ValueError:
      print "Enter an integer"
  while True:  
    try:
      c = int(raw_input('Give a number:'))
      result =(a+b)/c
      break
    except (ValueError,ZeroDivisionError):             #the specifications don't mention
      print "Enter a non-zero integer"                 #a return but I'm assuming the resulting
  return result                                        #should be recorded somehow.              
   


#NUMBER 2

'''
>>> gradeCalculator(theFile) where the data is 25, 28 and 27
144

>>> gradeCalculator(theFile) where the data is 30, 30 and 30
134

>>> gradeCalculator(theFile) where the data is "a", 28 and 27
"File must contain numbers" is printed
'''
def gradeCalculator(theFile):
    a=0
    input_file= open(theFile, "r")
    for line in input_file:
      line = line.strip()
      while True:
        try:
          a += int(line)                       # Assumes rounding deicded by user
          break
        except ValueError:
          print "File must contain numbers"
          return
    input_file.close()
    quizVal= 224 - a                 #223.2= .93*240 so 224 assuming no partial
    return quizVal                    #in a gradebook


#NUMBER 3

'''
>>> diceGraph(10)
diceGraph.txt is formatted in a histogram of 10 equals signs
where the 0 bars are omitted

>>> diceGraph(-1)
"Enter a non-negative number"

>>diceGraph(10.1)
diceGraph.txt is formatted in a histogram of 10 equals signs 
where the 0 bars are omitted
'''
def diceGraph(rolls):
  while True:              
    try:
      Rolls = int(rolls)
      if (rolls < 0) : raise ValueError('')
      break
    except ValueError :
      print "Enter an natural number"
      return ''
  c1=''
  c2=''
  c3=''
  c4=''
  c5=''
  c6=''
  for x in range(0, Rolls):
    num= random.randint(1,6)
    if num ==1:
      c1+='='
    if num ==2:
      c2+='='
    if num ==3:
      c3+='='
    if num ==4:
      c4+='='
    if num ==5:
      c5+='='
    if num ==6:
      c6+='='
  theFile = open("diceGraph.txt", "w")
  if c1 != '':
    theFile.write('1: ' + c1+ '\n')
  if c2 != '':
    theFile.write('2: ' + c2+ '\n')
  if c3 != '':
    theFile.write('3: ' + c3+ '\n')
  if c4 != '':
    theFile.write('4: ' + c4+ '\n')
  if c5 != '':
    theFile.write('5: ' + c5+ '\n')
  if c6 != '':
    theFile.write('6: ' + c6+ '\n')
  theFile.close()
  return ''


if __name__ == "__main__":
  print tryMath()
