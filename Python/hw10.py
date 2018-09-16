#####################
# Name: David Weidman
# File Name: hw8.py
#####################

# Number 1

class Item(object):
  
  def __init__(self, name, price):
    self.name= name
    self.price= price   
    
  def __repr__(self):
    return "{0}: ${1}".format(self.name, self.price)
    
  def getPrice(self):
    return self.price
 
# Number 2
  
class shoppingCart(object):
  
  def __init__(self, name):
    self.name= name
    self.cartDict= {}
    
        
    
  def __repr__(self):
    strn= 'List of Items in Cart ' + self.name+':'+'\n'
    tot=0
    for itm in self.cartDict:
      strn += itm.__repr__()+'('+str(self.cartDict[itm])+')'+'\n'
      tot+= itm.getPrice()*self.cartDict[itm]
    strn += 'Total: ' +str(tot)
    
    if len(self.cartDict) ==0:
      return 'No items in cart '+ self.name+ '!' 
    else:  
      return strn
    
  def addItem(self, Item):
    if Item in self.cartDict:
      self.cartDict[Item]+=1
    else:
      self.cartDict[Item]=1
      
    
  def removeItem(self, Item):
    self.cartDict[Item]-=1
    if len(self.cartDict[Item])==0:
      self.cartDict.remove(Item)
      
# Number 3
  def getDict(self):
    return self.cartDict
    
  def __add__(self, param):
    newCart= shoppingCart('Consolidated Cart')
    for itm in param.getDict():
      newCart.addItem(itm)
    for itm2 in self.getDict():
      newCart.addItem(itm2)
    return newCart
    
  def __iadd__(self, param):
    for itm in param.getDict():
      self.addItem(itm)
    return self
    
      
      
