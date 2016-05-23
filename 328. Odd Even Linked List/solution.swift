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
    func oddEvenList(head: ListNode?) -> ListNode? {
    	var cur = head

    	let oddHead = ListNode(0)
    	var oddCur: ListNode? = oddHead

    	let evenHead = ListNode(0)
    	var evenCur: ListNode? = evenHead

    	var odd = true

    	while let idx = cur {
    		if(odd) {
    			oddCur?.next = idx
    			oddCur = oddCur?.next
    		} else {
    			evenCur?.next = idx
    			evenCur = evenCur?.next
    		}
    		odd = !odd
    		cur = idx.next
    	}
    	oddCur?.next = evenHead.next
    	evenCur?.next = nil
    	return head
    }
}