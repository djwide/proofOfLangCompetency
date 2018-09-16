#####################
# Name: David Weidman
# File Name: hw7.py
#####################

import random as rand

# Number 1

'''
 >>>print det(mat)
mat= [[-4,5,7],[8,4,5],[-5,-4,8]]
-737
 
>>>print det(mat)
mat= [[-6,-1,-3],[-5,8,-5],[-2,10,-7]]
163
'''

def det(mat):
  x= mat[0][0]*mat[1][1]*mat[2][2]+mat[0][1]*mat[1][2]*mat[2][0]+mat[0][2]*mat[1][0]*mat[2][1]-(mat[2][0]*mat[1][1]*mat[0][2]+mat[2][1]*mat[1][2]*mat[0][0]+mat[2][2]*mat[1][0]*mat[0][1])
  return x

# Number 2

'''
 >>>print matrixAddition(mat1, mat2)
mat1= [[10,-4,2][-4,-3,7][-6,6,1]]
mat2= [[-2,-8,6][-6,-10,4][-3,4,1]]
[[8,-12,8][-10,-13,11][-9,10,2]]
 
>>>print matrixAddition(mat1, mat2)
mat1= [[-10,-9,3][-9,-1,-4][-10,1,-9]]
mat2= [[-7,2,-4][1,3,-7][4,4,7]]
[[-17,-7,-1][-8,2,-11][-6,5,-2]]
'''

def matrixAddition(mat1, mat2):
  height = len(mat1)
  width = len(mat1[0])
  newMat = []
  lis = [0]*width
  for x in range(height):
    newMat.append(lis[:])
  for x in range(len(mat1)):
    for y in range(len(mat1[x])):
      newMat[x][y]= mat1[x][y] +mat2[x][y]
  return newMat


# Number 3

'''
 >>>print decode(scrmbl, key, mat)
scrmbl= 'YYI iduxj WPMHG MY UEAQ'
key = 'FREEDOM'

output- THE EAGLE FLIES AT DAWN
  
 
>>>print decode(scrmbl, key, mat)
scrmbl= 'YYI iduxe-; kcmiv of dfnr'
key = 'FREEDOMa'

output- THE EAGLE-; FLIES AT DAWN
'''

def decode(scrmbl, key, mat):
  key = getNewKey(key, getMsgLen(scrmbl)) #overlay key with the message
  decoded=""
  count = 0
  for char in scrmbl.upper(): #encode message
    if char.isalpha():
      row = mat[0].index(key[count])
      col = mat[row].index(char)
      count+=1
      decoded+=mat[0][col]
    else:
      decoded+=char
  return decoded
  
  #col = mat[0].index(char) #remember, the first row of the matrix is the same as the alphabet!
  
  
  
def initialize1():
  ylist=[]
  for y in range(26):
    xlist=[]
    for x in range(26):
      xlist.append(chr((y+x)%26+65))
    ylist.append(xlist)
  return ylist
  
def initialize():
  alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  matrix = []
  for i in range(26):
    matrix.append(list(alpha[i:]+alpha[:i]))
  return matrix
  
def printMatrix(matrix):
  for row in matrix:
    myStr = " ".join(row)
    print myStr

def getMsgLen(message):
  count = 0
  for char in message:
    if char.isalpha():
      count+=1
  return count
  
def getNewKey(key, lenMsg):
  lenKey = len(key)
  repeat = lenMsg/lenKey
  add = lenMsg % lenKey
  key = key*repeat+key[:add]
  return key.upper()
 
def encode(msg, key, mat):
  key = getNewKey(key, getMsgLen(msg)) #overlay key with the message
  encoded=""
  count = 0
  for char in msg.upper(): #encode message
    if char.isalpha():
      col = mat[0].index(char) #remember, the first row of the matrix is the same as the alphabet!
      row = mat[0].index(key[count])
      count+=1
      encoded+=mat[row][col]
    else:
      encoded+=char
  return encoded
      
   
def randMat(num):
  mat = []
  lis = [0]*num
  for x in range(num):
    mat.append(lis[:])
  for x in range(num):
    for y in range(num):
      mat[x][y]= rand.randint(-10,10)
  return mat 
 
 
if __name__ == "__main__":
  '''
  mat = randMat(3)
  mat2= randMat(3)
  print mat
  print mat2
  print matrixAddition(mat, mat2)
  
  message= 'THE eagle-; FLIES AT DAWN'
  key = 'FReEDOMa'
  mat = initialize()
  print encode(message, key, mat)
  '''
  scrmbl= 'YYI iduxe-; kcmiv of dfnr'
  key = 'FREEDOMa'
  mat = initialize()
  print decode(scrmbl, key, mat) 
  
