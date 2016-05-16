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
    func swapPairs(head: ListNode?) -> ListNode? {
        var before: ListNode? = nil
        var cur = head
        var ans = head?.next ?? head
        while let a = cur, b = a.next {
            before?.next = b
            cur = b.next
            b.next = a
            a.next = nil
            before = a
        }
        if let a = cur {
            before?.next = a
        }
        return ans
    }
}