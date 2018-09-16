/* 
You built a merge function on WPR1 that merges
two already sorted SLists together into one sorted 
SList.  Copy your code into this file if you got
the question correct, otherwise write a working
version of merge.  merge should operate in linear
time.  Now, to complete our mergesort function,
write a function called halves that will take a
an SList as input and return a pair (tuple) of
SLists, each containing a different half of the
original SList.  If there are an odd number of 
elements, it does not matter which half gets the
one extra element.  Feel free to write any helper
functions to help you accomplish your goal.
*/
case class SList(item: Int, next:SList)

def mergesort(list: SList): SList = {
  if (list == null || list.next == null) list
  else {
    val (oneHalf, otherHalf) = halves(list)
    merge(mergesort(oneHalf), mergesort(otherHalf))
  }
}

def merge (list1: SList, list2: SList): SList = {
  if (list1==null) list2
  else if (list2 == null) list1
  else if(list1.this>list2.this) SList(list2.this, merge(list1, list2.next)
  else SList(list1.this, merge(list1.next, list2)
}

def halves (list: SList): (SList, SList) = {
  val l1= SList()
  val l2= SList()
  var count = 0
  while(list!= null){
    if (count%2==0){
      l1= SList(list.this, l1)
    }
    else{
      l2= SList(list.this, l2)
    }
    list = list.next
    count+=1
  }
  l1,l2
  
}



/*
In class we took our MSeq-based Queue and started
converting it to a Priority Queue (PQueue).  The
one part that we left off was actually implementing
the insert method that enqueue would call.  In the
MSeq implementation of PQueue below, add an insert
method that will complete the functionality of our
Priority Queue.
*/
abstract class PQueue {
  def isEmpty:Boolean
  def peek: Int
  def enqueue(x: Int)
  def dequeue():Int
}

case class MList (var item: Int, var next: MList)
class MSeq extends PQueue{ 
  private var front: MList = null
  private var back: MList = null
  override def toString = if (front != null) front.toString else "MSeq()"
  
  def isEmpty = front == null
  
  def peek = {
    if (isEmpty) throw new NoSuchElementException("Peek on an empty Queue")
    front.item
  }
  
  def enqueue(x: Int) {
    insert(x)
  }
  
  def dequeue(): Int = {
    if (isEmpty) throw new NoSuchElementException("Dequeue on an empty Queue")
    else {
      val r = front.item
      front = front.next
      //if we just dequeued the last node, set back to null also
      if (front == null) back = null
      r 
    }
  }
  
  def addToFront (x: Int) {
    front = MList(x,front)
    if (back == null) back = front
  }

  def addToBack (x: Int) {
    if (isEmpty) addToFront(x)
    else{
      back.next = MList(x,null)
      back = back.next 
    }
  }
  
  def insert (x: Int){
    addToBack(x)  
  }
}
  
/*
Once we get a working Heap put together in class
copy the code into this file, so you can use a 
heap to solve the following problem:

Write a function kthBiggest that takes an integer
and a list. Assume that 0≤k<n, where n is the length
of the list. The function should use a Heap to find 
the item that would be at index k if you were to sort
the list in decreasing order. 

For example, kthBiggest(2, List(1,9,3,7,5,8,6,2,4))
would return 7.
 
However, your implementation should not actually sort
the list, because that would be too slow in the common
case that k is much much less than n. Actually sorting
the list would take O(n log n) time, but your function
should run in O(n log k) time. 

For the purposes of this problem, assume that the insert
and deleteMin methods take O(log m) time, where m is the
size of the heap, even if that is not literally true of 
the current implementation. 
*/ 

def kthBiggest(k:Int, list: List):Int={
  mH= apply(list) 
  for (x<- 0 to k) mH.deleteMax
  mH.item
}

abstract class MaxHeap{
  def isEmpty: Boolean
  def min: Int // throws exception if the heap is empty
  def insert(elem: Int): MinHeap
  def deleteMin: MinHeap // throws exception if heap is empty
}

object MaxHeap{

  def apply (elems: Int*): MaxHeap = {
    var heap = MaxHeap.empty
    for (elem <- elems) heap = heap.insert(elem)
    heap
  }
  
  def empty: MaxHeap = HOTHeap(null)
  
  private case class HOT (item: Int, left: HOT, right: HOT){
    val num = 1 + size(left) + size(right)
  }

  private def size(tree: HOT): Int = {
    if (tree == null) 0
    else tree.num 
  } 

  private def merge (t1: HOT, t2: HOT): HOT = {
    if (t1 == null) t2
    else if (t2 == null) t1
    else{
      val (a,b) = if (t1.item > t2.item) (t1,t2) else (t2,t1)
      if (size(a.left) < size(a.right))
        HOT(a.item, merge(a.left,b), a.right)
      else a.copy(right = merge(a.right,b))
    }
  }
  
  private case class HOTHeap (val root: HOT) extends MaxHeap {
    def isEmpty: Boolean = root == null
    
    def max: Int = {
      if (isEmpty) throw new NoSuchElementException("max of empty heap")
      else root.item  
    }
    
    def insert(elem: Int): MaxHeap = {
      HOTHeap(merge(root, HOT(elem,null,null)))
    }
    
    def deleteMax: MaxHeap = {
      if (isEmpty) throw new NoSuchElementException("deleteMin of empty heap")
      else HOTHeap(merge(root.left,root.right))
    }
  }
  
}
