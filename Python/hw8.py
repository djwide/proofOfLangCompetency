#####################
# Name: David Weidman
# File Name: hw8.py
#####################

# Number 1
# 1) Author
# 2) Book

# Number 2

'''
 >>>print mfl('dlksfgkdfgjklHFOGFNHSDJBKJSDBGKJSDBjsgnfjad')
('k','j','g','f'd,'S','J','D','B')

 >>>print mfl('ddlksfgkdfgjklHFOGFNHSDJBKJSDBGKJSDBjsgnfjad')
('d',)

'''

def mfl(string):
  x=0
  tup = ()
  strList= dictSort2(mkStrDict(string))
  while True:
    tup+=tuple(strList[x][1])
    if strList[x][0]> strList[x+1][0]:
      break
    x+=1
  return tup

# Number 3

'''
 >>>print translateMsg('this', 'texts.txt')
this
 
 >>>print translateMsg('ZOMG d00d, dis hw is SO kewl!', 'texts.txt')
oh my god dude, thus homework is SO cool!
'''
def translateMsg(string, theFile):
  dictn= mkDictFromDictFile(theFile)
  newStr=''
  wordls= string.split()
  for x in wordls:
    if x.rstrip(',.!').lower() in dictn: 
      if x[-1] in '!,.':
        newStr+= dictn[x.rstrip(',.!').lower()]+ x[-1] +' '
      else:
        newStr+= dictn[x.rstrip(',.!').lower()]+ ' '
    else:
      newStr+= x + ' '
  return newStr


def mkDictFromDictFile(theFile):
  txtDict= {}
  iFile= open(theFile, "r")
  for line in iFile:
    lst =line.split('==')
    newlst=[]
    for x in lst:
      x=x.strip(' \n') #works because there are no lower case ns on the left
      newlst.append(x.lower())
    txtDict[newlst[0]]= newlst[1]
  return txtDict


def mkStrDict(string):
  charDict={}
  for char in string:
    if char in charDict:
      charDict[char] +=1
    else:
      charDict[char]=1
  return charDict
  


def dictSort2(aDict):
  valList=[]
  for key,val in aDict.items():
    valList.append((val,key))
  valList.sort(reverse=True)
  return valList
 
 
if __name__ == "__main__":
  print translateMsg('ZOMG d00d, dis hw is SO kewl! tbh i <3 cs301, cuz python is awesum! ', 'texts.txt')


