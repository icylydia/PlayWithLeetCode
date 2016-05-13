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
    func deleteDuplicates(head: ListNode?) -> ListNode? {
    	if head?.next == nil {
    		return head
    	} else {
    		if head!.val == head!.next!.val {
    			return deleteDuplicates(head?.next)
    		} else {
    			head?.next = deleteDuplicates(head?.next)
    			return head
    		}
    	}
    }
}