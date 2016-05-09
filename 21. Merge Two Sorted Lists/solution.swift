/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func mergeTwoLists(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    	var bt: BTree? = nil
    	var i1 = l1
    	var i2 = l2
    	if(i1 != nil) {
    		bt = BTree(i1!.val)
    		i1 = i1!.next
    	} else if(i2 != nil) {
    		bt = BTree(i2!.val)
    		i2 = i2!.next
    	}
    	while(i1 != nil) {
    		bt?.insert(i1!.val)
    		i1 = i1!.next
    	}
    	while(i2 != nil) {
    		bt?.insert(i2!.val)
    		i2 = i2!.next
    	}
    	if(bt == nil) {
    		return nil
    	} else {
    		var ret = ListNode(0)
    		var itr = ret
    		bt!.traversal {
    			itr.next = ListNode($0)
    			itr = itr.next!
    		}
    		return ret.next
    	}
    }
}
class BTree {
	public var val: Int
	public var leftNode: BTree?
	public var rightNode: BTree?
	public init(_ val: Int) {
		self.val = val
		self.leftNode = nil
		self.rightNode = nil
	}
	public func insert(val: Int) {
		if(val > self.val) {
			if(rightNode == nil) {
				rightNode = BTree(val)
			} else  {
				rightNode!.insert(val)
			}
		} else {
			if(leftNode == nil) {
				leftNode = BTree(val)
			} else {
				leftNode!.insert(val)
			}
		}
	}
	public func traversal(closure: (val: Int) -> ()) {
		leftNode?.traversal(closure)
		closure(val: val)
		rightNode?.traversal(closure)
	}
}