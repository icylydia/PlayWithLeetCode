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
 	func removeNthFromEnd(head: ListNode?, _ n: Int) -> ListNode? {
 		var index = 0
 		var rmv: ListNode? = nil
 		var prev: ListNode? = nil
 		var cur = head
 		while(cur != nil) {
 			index++
 			if(index == n) {
 				rmv = head
 			} else if(index > n) {
 				prev = rmv
 				rmv = rmv?.next
 			}
 			cur = cur?.next
 		}
 		if(prev != nil) {
 			prev!.next = rmv?.next
 			return head
 		} else {
 			return head?.next
 		}
 	}
 }