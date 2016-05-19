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
    func removeElements(head: ListNode?, _ val: Int) -> ListNode? {
        var prev: ListNode? = nil
        var iterator = head
        while iterator != nil {
        	if iterator!.val == val {
        		prev?.next = iterator!.next
        	} else {
        		prev = iterator
        	}
        	iterator = iterator?.next
        }
        var ans = head
        while let uans = ans where uans.val == val{
        	ans = ans!.next
        }
        return ans
    }
}