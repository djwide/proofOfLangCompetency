/*
Write a function squareRoot that takes a non-negative integer
and returns its square root as an integer. For example, squareRoot(9)
should return 3. If the actual square root is not an integer, round
up to the next integer. For example, the square root of 20 is between
4 and 5, so squareRoot(20) should return 5.  Your function MUST
determine the square root using binary search (successively cutting
the search space in half).  Your function should not use floating point
numbers anywhere in the code.
*/

//Doesn't work at very high numbers because the square takes you out of INT range
def squareRoot(n: Int): Int = {
  var (nL,nH)= (0,n)
  while(nH-nL!=1){
    if(((nL+nH)/2)*((nL+nH)/2).toInt==n) return (nL+nH)/2
    else if(((nL+nH)/2)*((nL+nH)/2)>n) nH=(nL+nH)/2
    else nL=(nL+nH)/2
  }
  return nH
}

/*
We (will) have worked with our BST in class, and
implemented search, insert, and delete functions.
Your task is to write three more functions - union
intersect, and equiv (You may also find it useful
to create a size function which returns the number of
nodes in a BST).  

Union will return a BST containing the set of unique
elements resulting from combining the two input BSTs.

Intersect will return a BST containing only the elements
that existed in both the input BSTs.

Equiv will return a Boolean value indicating whether the
two input BSTs are equivalent in terms of their members.
BSTs can have the same data, but a different shape, as 
shown in the diagram in the assignment instructions.  
*/
case class BST (left: BST, item: String, right: BST)

def size(tree: BST):Int={
  if(tree==null)return 0
  else return 1+size(tree.left)+size(tree.right)
}

def search(tree: BST, target:String):Boolean = {
  if(tree==null) return false
  else if(tree.item==target)return true
  else if(tree.item<target)search(tree.right, target)
  else search(tree.left,target)
}

def insert(tree:BST, newStr:String):BST= {
  if(tree==null)BST(null,newStr,null)
  else if(newStr== tree.item) tree
  else if(newStr<tree.item)tree.copy(left=insert(tree.left,newStr))
  else tree.copy(right=insert(tree.right,newStr))
}

def delete(tree: BST, target: String):BST = {
	if(tree==null)tree
	else if(target>tree.item) tree.copy(right=delete(tree.right, target))
	else if(target<tree.item)BST(delete(tree.left,target), tree.item,tree.right)
	else{
	  if(tree.left==null&tree.right==null)return null
	  else if(tree.left==null) return tree.right
	  else if(tree.right==null) return tree.left
	  else{
	    val(maxLeftValue,leftRemaining)=extractmax(tree.left)
	    BST(leftRemaining, maxLeftValue, tree.right)
	  }
	}
}


def extractmax(tree:BST):(String,BST)={
  if(tree.right==null)(tree.item,tree.left)
  else{
    val(maxItem,extractTree)=extractmax(tree.right)
    (maxItem,BST(tree.left,tree.item,extractTree))
  }
}


def union(t1:BST, t2:BST):BST = {
  var T1= t1
  var T2= t2
  while(size(T2)>0){
    T1= insert(T1,T2.item)
    T2= delete(T2,T2.item)
  } 
  T1   
}

def intersect(t1:BST, t2:BST):BST = {
  var T1= t1
  var T2= t2
  while(size(T2)>0){
    if(search(T1, T2.item))T1= insert(T1,T2.item)
    T2= delete(T2,T2.item)
  } 
  T1   
}  

def equiv(t1:BST, t2:BST):Boolean = {
  var T1= t1
  var T2= t2
  while(size(T2)>0){
    if(search(T1,T2.item)){
      var temp= T2.item
      T2= delete(T2,temp)
      T1= delete(T1, temp)
      println("x")
    }
    else return false
  }
  if(T1== null)return true
  false    
}
