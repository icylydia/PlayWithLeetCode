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
    func reverseList(head: ListNode?) -> ListNode? {
    	if let next = head?.next {
    		let nxtRev = reverseList(next)
    		next.next = head
    		head?.next = nil
    		return nxtRev
    	} else {
    		return head
    	}
    }
}