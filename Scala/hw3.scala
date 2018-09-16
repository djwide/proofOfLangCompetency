/*
We created our own homegrown mutable sequence
class, which we defined as:

class MSeq{
  private var front: MList = null
  private var back: MList = null
  
}

We defined several methods inside of our class: 
isEmpty, addToFront, addToBack, apply, and update
Feel free to copy them into the implementation below
and use them as you see fit.

Now, we will round out the functionality of our MSeq by
adding an append method.  The append method will allow
a second MSeq to be appended to the end of the current
one.  The second MSeq should be empty after this
operation is performed.  This should be written such that
it operates in constant time (instead of linear).
As a review, a constant time algorithm would take the same
amount of time to work on sequences of a couple nodes and
sequences of millions of nodes.  Whereas, a linear time
algorithm would take time that grows linearly with the input
size (so, a sequence of 100 items, will take roughly 10 times
as long as a sequence of 10 items)
*/

case class MList (var item: Int, var next: MList)
class MSeq extends Queue{ 
  private var front: MList = null
  private var back: MList = null
  override def toString = if (front != null) front.toString else "MSeq()"

  def isEmpty= front==null

  def addToFront(x: Int){
    front = MList(x,front)
    if(back== null) back = front
  }

  def addToBack (x: Int){
    if (isEmpty) addToFront(x)
    else {
      back.next= MList(x,null)
      back= back.next
    }
  }
 
  def append (m2: MSeq){      //assumes m2 is not empty
    if (isEmpty) front = m2.front
    else back.next= m2.front
    back= m2.back
    m2.front = null
  }
  def enqueue(x:Int){
    addToBack(x)
  }
  
  def dequeue:Int={
    if (isEmpty) throw new NoSuchElementException("Dequeue on Empty Queue")
    val i = front.item
    front = front.next
    i
  }
  
  def peek:Int={
    if (isEmpty) throw new NoSuchElementException("Dequeue on Empty Queue")
    front.item
  }
  
}

object MSeq{
  def apply(nums:Int*):MSeq={
    val m = new MSeq()
    for (num <-nums) m.addToBack(num)
    m
  }
}


/*
The Queue ADT can be implemented using a linked list.
First, define an abstract Queue that defines the
following methods: isEmpty, peek, enqueue, dequeue.
To keep things simple, your Queue will operate only on
Ints

Now, update your MSeq class above to extend your
abstract Queue.  Make sure to include exceptions for
any "illegal" operations someone may try to perform
Also, keep in mind that the four Queue operations that
you have defined above should all be implemented so
that they occur in constant time (vs. linear)
*/

abstract class Queue{
  def isEmpty: Boolean
  def enqueue(x:Int)
  def dequeue: Int
  def peek: Int

}


