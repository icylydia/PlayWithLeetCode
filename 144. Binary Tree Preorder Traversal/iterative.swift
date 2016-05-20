/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func preorderTraversal(root: TreeNode?) -> [Int] {
        var stack = Stack<TreeNode?>()
        stack.push(root)
        var ans = [Int]()
        while !stack.isEmpty {
        	if let head = stack.pop() {
        		ans.append(head.val)
        		stack.push(head.right)
        		stack.push(head.left)
        	}
        }
        return ans
    }
}
struct Stack<E> {
	private var elements = [E]()
	var isEmpty: Bool {
		return elements.count == 0
	}
	mutating func push(element: E) {
		elements.append(element)
	}
	mutating func pop() -> E {
		return elements.removeLast()
	}
}