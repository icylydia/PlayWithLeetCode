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
	func minDepth(root: TreeNode?) -> Int {
		if let root = root {
			return rec(root)
		} else {
			return 0
		}
	}
	func rec(root: TreeNode?) -> Int {
		if let root = root {
			if root.left == nil && root.right == nil {
				return 1
			} else {
				return 1 + min(rec(root.left), rec(root.right))
			}
		} else {
			return Int.max
		}
	}
}