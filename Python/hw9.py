#####################
# Name: David Weidman
# File Name: hw8.py
#####################

# Number 1

'''
 >>>compatability('Harry Potter','Hermoine Granger')
harmony: 5
discord: -1
 
 >>>compatability('abcd','bcde')
harmony: 3
discord: 0
'''

def compatability(name1, name2):
  name1 =set(name1.lower().replace(' ',''))
  name2= set(name2.lower().replace(' ',''))
  print 'harmony: ' + str(len(name1 & name2))
  print 'discord: ' + str(len((name1-name2))-len((name2-name1)))
  
  
  
  
# Number 2
# i) (PRIMARY & WARM)|COOL  {GREEN, BLUE, INDIGO, VIOLET, RED, YELLOW}
# ii) SECONDARY -WARM   {GREEN, VIOLET}
# iii)(COOL &SECONDARY)|WARM    {GREEN, VIOLET, RED, ORANGE, YELLOW}
# iv)WARM-(SECONDARY&WARM)   {RED, YELLOW}
# v)(COOL|PRIMARY)-WARM   {GREEN, BLUE, INDIGO, VIOLET}
  
  
if __name__ == "__main__":
  compatability('abcd','bcde')
