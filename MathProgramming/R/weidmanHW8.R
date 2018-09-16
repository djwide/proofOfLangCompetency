curr= 1
oneCount= 0
twoCount= 0
threeCount= 0
fourCount= 0
for(i in 1:50000) {
  ht = sample(c(0,1),1)
  if(ht == 1 && curr != 4) curr = curr+1
  else if(ht== 0){
    if(curr == 4) {
      ht4 = sample(c(0,1,2,3),1)
      if(ht4==0)curr=3 
    }
    else if(curr == 3) {
      ht3 = sample(c(0,1,2),1)
      if(ht3==0)curr=2
    }
    else if(curr == 2) {
      ht2 = sample(c(0,1),1)
      if(ht2==0)curr=1
    }
  }
  if(curr==1)oneCount= oneCount+1
  else if(curr==2)twoCount= twoCount+1
  else if(curr==3)threeCount= threeCount+1
  else if(curr==4)fourCount= fourCount+1
  
} 
print(oneCount/50000)
print(twoCount/50000)
print(threeCount/50000)
print(fourCount/50000)
