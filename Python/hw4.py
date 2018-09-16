#############
# Name: David Weidman
# File Name: hw4.py
#############

# Number 1
'''
 >>>censorFile(input.txt) where file contains "this string" 
                                              "has words"
 **** string
 has words
 
 >>>censorFile(input.txt) "this string has 1213" 
 **** string has ***
 
'''
 
def censorFile(theFile):
  input_file= open(theFile, "r")
  newFile= open("censored.txt", 'w')
  for line in input_file:
    newLine=''
    for word in line.split():
      if (len(word)==4):
        word='****'
      newLine+= word+ ' '    
    newFile.write(newLine + '\n')
  input_file.close()
  newFile.close()
  

# Number 2
'''
 >>>ferbLatin("here is a string")
  ereherb isyerb ayerb ingstrerb
 
 >>>ferbLatin("this isn't not") #a phoenetic string with punctuation
 istherb isn'tyerb oterb
 
'''
  
def ferbLatin(stringO):
  newString=''
  for word in stringO.split():
    n= 0
    if word[0] in 'aeiou':
      newWord = word+'yerb'
    else:
      while word[n] not in 'aeiou':           #implies use of phonetic english s
        n+=1                                  #word eg no input of numbers
      newWord= word[n:]+word[:n]+'erb'        #or punctuation because 
    newString+= newWord+' '                   
  return newString                            #this also implies double/leading 
                                              #spaces will not be taken into account
  
  
# Number 3

'''
 >>>createPassword()
  Entered:
  Output: invalid
  Entered: a
  Output: invalid
  Entered: abcdefgh
  Output: invalid
  Entered:ABcdefgh
  Output: invalid
  Entered:UB3r(Oder!!!
  Output: invalid
  Entered:UB3r(Oder!!
  Output: valid
 
'''

def createPassword():
  while True:
    try:
      capCount = 0
      specCount= 0
      pword = raw_input('Password: ')
      if (len(pword))<8 : raise ValueError('')
      for char in pword:
        if char.istitle():
          capCount +=1  
      if (capCount < 2) : raise ValueError('')
      for char in pword:
        if not char.isalpha()and not char.isdigit():
          specCount +=1  
      if (specCount !=3) : raise ValueError('')
      print "valid"
      break
    except ValueError:
      print "invalid"
      
  
  
if __name__ == "__main__":
  print ferbLatin("this isn't not a phoenetic string with punctuation")
