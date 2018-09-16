#####################
# Name: David Weidman
# File Name: hw5.py
#####################

import math

# Number 1

# Ai) [2,4,6,11.2]
# Aii) [1,2,'x',4]
# Aiii) [[1,2,'x',4],2,4,6,8]

# B) Append() will always take up one index location while extend will
#   take up whatever the length of the first list plus the second list is.
#   The append() will refer to the old lists memory location while extend
#   just adds the given data type to the new mem location.
#
# C) In line 4 I would say myList2[:] to create a seperate mem loc for the list


# Number 2

'''
 >>>print squares(6)
[0,1,4]
 
>>>print squares(0)
[]
'''

def squares(num):
  listO= range(num)
  retList=[]              #assuming not inclusive on the greater end
  x= 0
  for num in listO:
    if math.sqrt(num)%1 == 0:
      retList.append(num)
  return retList

# Number 3

def genTup ( n ) :
  myTup = ()
  for i in range ( n ) :
    myTup+= (i,)          #I made the integer i into a tuple value i
  return myTup


if __name__ == "__main__":
  print squares(0)
