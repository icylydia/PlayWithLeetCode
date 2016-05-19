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
    func isPalindrome(head: ListNode?) -> Bool {
        var length = 0
        var iterator = head
        var formerHalf = head
        var reversedLaterHalf = head
        while iterator != nil {
            reversedLaterHalf = iterator
        	length++
        	iterator = iterator?.next
        }
        if length < 2 {
        	return true
        }
        iterator = head
        for _ in 0..<(length/2 - 1) {
        	iterator = iterator?.next
        }
        var iterator2 = (length % 2 == 0) ? iterator?.next : iterator?.next?.next
        var formerTemp: ListNode? = nil
        for _ in 0..<(length/2) {
        	var next = iterator2?.next
        	iterator2?.next = formerTemp
        	formerTemp = iterator2
        	iterator2 = next
        }
        for _ in 0..<(length/2) {
        	if formerHalf?.val != reversedLaterHalf?.val {
        		return false
        	}
        	formerHalf = formerHalf?.next
        	reversedLaterHalf = reversedLaterHalf?.next
        }
        return true
    }
}