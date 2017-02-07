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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var len1 = l1?.length ?? 0
		var len2 = l2?.length ?? 0
		var sum: ListNode? = nil
		var idx1 = l1
		var idx2 = l2
		while len1 > 0 && len2 > 0 {
			var val = 0
			if len1 >= len2 {
				val += idx1!.val
				idx1 = idx1!.next
				len1 -= 1
			}
			if len2 > len1 {
				val += idx2!.val
				idx2 = idx2!.next
				len2 -= 1
			}
			sum = push(sum, val)
		}
		var ans: ListNode? = nil
		var carry = false
		while let usum = sum {
			let val = (carry ? 1 : 0) + usum.val
			carry = val > 9
			ans = push(ans, val % 10)
			sum = usum.next
		}
		if carry {
			ans = push(ans, 1)
		}
		return ans
    }
	func push(_ list: ListNode?, _ val: Int) -> ListNode {
		let head = ListNode(val)
		head.next = list
		return head
	}
}
extension ListNode {
	var length: Int {
		var len = 0
		var head: ListNode? = self
		while let uhead = head {
			len += 1
			head = uhead.next
		}
		return len
	}
}