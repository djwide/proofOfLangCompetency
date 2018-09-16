/*
We have worked with our own homegrown immutable 
singly-linked list class, which we defined as:

case class SList (item: Int, next: SList)

We want to offer some of the same functionality present in the
Scala List methods (and practice solving problems using recursion, too!).
Write at least 4 out of the 6 following functions that operate on an SList
(you may choose to write up to 2 of these using loops, but using recursion
 is encouraged)
*/
case class SList (item: Int, next: SList)


def deleteAll(lst:SList, x:Int): SList = {
  var lst1 = lst
  if (lst.next==null){
    if (lst.item == x) return null
    else return SList(lst.item,null)
  }
  else {
    if (lst1.item == x) lst1 = deleteAll(lst.next,x)
    else lst1 = SList(lst.item,deleteAll(lst.next,x))
  }
  lst1
}


def deleteFirst(lst:SList, x:Int): SList = {
  var nList: SList= null
  var oList= lst
  var first = false
  while(oList!=null){
    if (oList.item != x || first == true){
      nList= SList(oList.item,nList)
      oList= oList.next
    }
    else{
      oList= oList.next
      first = true
    }
  }
  println(nList)
  var rev: SList= null
  while(nList!=null){                         //obviously doesn't need to be 
    rev= SList(nList.item,rev)                //this convoluded. sorry, it's late
    nList = nList.next
  }
  rev
}


def append(lst1: SList, lst2: SList): SList = { // assumes no null lists
  var lst = lst1
  if (lst.next==null){
    return SList(lst.item,lst2)
  }
  else {
    lst = SList(lst.item,append(lst.next,lst2))
  }
  lst
}
def addToEnd(lst:SList, x:Int): SList = {
  if (lst == null) return SList(x,null)
  var l = lst
  if (l.next==null){
    val lst2 =SList(x,null)
    return SList(l.item,lst2)
  }  
  else l = SList(l.item,addToEnd(l.next,x))
  l
}

def insert(lst: SList, i: Int, x: Int): SList = { // assumes no nulls
  var right= lst
  var left: SList= null
  var sol: SList= null
  var c = 0
  while(right!=null){
    if (c== i+1){
      right= SList(x, right)
      println(left)
      sol = append(left,right)
      return sol
    }
    else{
      left = addToEnd(left, right.item)
      right= right.next
      c +=1
    }
  }
  left
}


/*
def filter (lst:SList, p:(Int) => Boolean): SList = {
  ???
}

def map (lst:SList, f:(Int) => Int): SList = {
  ???


We (will) have worked with our own homegrown mutable 
singly-linked list class, which we defined as:

case class MList (var item: Int, var next: MList)

You will write a function that swaps the position of each pair
of items in the list.  You can assume that the list has an even
number of elements, so if the list started out as:
[1,4,5,6]
It would end up as:
[4,1,6,5]

Your function must accomplish this by manipulating the next fields
in your MList nodes, NOT by manipulating the item fields.
Drawing this out before you code is highly recommended.
*/
case class MList (var item: Int, var next: MList)

def addToEndM(l: MList,x:Int):MList={
  if (l == null) return MList(x,null)
  if (l.next==null)l.next=MList(x,null)
  else addToEndM(l.next,x)
  l
}
 
def swapPairs(lst: MList): MList = {
  var oList = lst
  var right: MList= null
  var left: MList= null
  var nList: MList= null
  var c = 0
  while(oList!=null){
    
    if (c%2== 0){
      left= MList(oList.item,left)
    }
    if (c%2== 1){
      right= MList(oList.item,right)
    }
    
    oList = oList.next
    c+=1
    
  }
  while( c>0){
    if (c%2== 0){
      nList= MList(left.item,nList)
      left = left.next
    }
    if (c%2== 1){
      nList= MList(right.item,nList)
      right = right.next
    }
    c-=1
  }
  nList
  
}




