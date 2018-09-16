
#####################
# Name: David Weidman
# File Name: hw5.py
#####################

# Number 1

'''
 >>>oldL= [1,2,3,4,5]
 >>>print productOfNeighbors(oldL)
[2,6,24,60,20]
 
 >>>oldL= [7,0,4,5,3,8]
 >>>print productOfNeighbors(oldL)
[0,0,0,60,120,24]
'''

def productOfNeighbors(oldL):
  newL= [oldL[0]*oldL[1]]
  for x in range(1,len(oldL)-1):
    newL.append(oldL[x-1]*oldL[x]*oldL[x+1])
  newL.append(oldL[len(oldL)-1]*oldL[len(oldL)-2])
  return newL
  
# Number 2

'''
 >>>encode("yellow", "this.txt") 
 where file contains "The Eagle Flies at Dawn."
 
 RCW WYBHW AHDWQ YR OYUJ.
 
 >>>encode("ORANGE", "this.txt")
 where file contains "The Eagle,;- Flies at Dawn."
 
 TCG GOBIG,;- EIDGS OT NOWK.
'''

def encode(key, theFile):
  message = []
  input_file= open(theFile, "r")
  for line in input_file:
    for char in line:
      message.append(char.upper())
  key = key.upper()
  cipher =[]
  for x in range(65,91):
    cipher.append(chr(x))
  norm = cipher[:]
  for char in key[-1::-1]:
    cipher.insert(0,cipher.pop(cipher.index(char)))
  retstr = ''
  for elem in message:
    if elem.isalpha():
      ind= norm.index(elem)
      retstr+= cipher[ind]
    else:
      retstr+= elem
  return retstr


# Number 3

'''
 >>>decode("yellow", "this.txt") 
 where file contains "RCW WYBHW AHDWQ YR OYUJ."
 
 THE EAGLE FLIES AT DAWN.
 
 >>>decode("ORANGE", "this.txt")
 where file contains "TCG GOBIG,;- EIDGS OT NOWK."
 
 The EAGLE,;- FLIES AT DAWN.
'''

def decode(key, theFile):
  messedup = []
  input_file= open(theFile, "r")
  for line in input_file:
    for char in line:
      messedup.append(char.upper())
  key = key.upper()
  cipher =[]
  for x in range(65,91):
    cipher.append(chr(x))
  norm = cipher[:]
  for char in key[-1::-1]:
    cipher.insert(0,cipher.pop(cipher.index(char)))
  retstr = ''
  for elem in messedup:
    if elem.isalpha():
      ind = cipher.index(elem)
      retstr+= norm[ind]
    else:
      retstr+= elem
  return retstr




if __name__ == "__main__":
  oldL= [7,0,4,5,3,8]
  print productOfNeighbors(oldL)
