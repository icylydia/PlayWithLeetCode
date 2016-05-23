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
    func addTwoNumbers(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        var prev = ListNode(0)
        var cur = prev
        var l1 = l1
        var l2 = l2
        while l1 != nil || l2 != nil || carry == 1 {
        	let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
        	var node = ListNode(sum % 10)
        	carry = sum / 10
        	cur.next = node
        	cur = node
        	l1 = l1?.next
        	l2 = l2?.next
        }
        return prev.next
    }
}