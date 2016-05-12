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
        var prev:ListNode? = nil
        var cur = head
        var next = cur?.next
        while cur != nil {
        	cur!.next = prev
        	prev = cur
        	cur = next
        	next = next?.next
        }
        return prev
    }
}