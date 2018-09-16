####################
# Name: David Weidman
# File Name: hw1.py
####################

def moneyForGas(miles):
  mpg= 26.0
  price = 3.85
  participants= 3.0
  cut=((miles /mpg )*price)/participants
  return cut
  '''
  determine the amount of money each person pays for gas
  >>> moneyForGas(1212)
  59.82
  >>> moneyForGas(10)
  .49
  '''


def oldMcDonald(animal, sound):
  x= "Old McDonald had a farm, ee-eye-ee-eye-oh", '\n', "And on his farm he had some "+ animal+"s"+ ", ee-eye-ee-eye-oh", '\n',  "With a "+ sound + sound +" here, and a "+ sound + sound+"there",'\n',  "Here a"+ sound+" there a"+ sound+" everwhere a "+ sound+ sound,  '\n',  "Old McDonald had a farm, ee-eye-ee-eye-oh"
  return x

'''
  prints out a verse of the song "old mcdonald had a farm
  >>> oldMcDonald("pig", "oink")
  Old McDonald had a farm, ee-eye-ee-eye-oh
  And on his farm he had some pigs, ee-eye-ee-eye-oh
  With a oink oink here, and a oink oink there
  Here an oink, there a oink, everwhere an oink oink
  Old McDonald had a farm, ee-eye-ee-eye-oh
  '''


def findX(c,n,x):
  page = x/(n*c)+1
  print page
  '''
  Returns the corresponding page that the xth entry is on
  >>> findX(2,50,32)
  1
  >>> findX(5,10,102)
  3
  '''

