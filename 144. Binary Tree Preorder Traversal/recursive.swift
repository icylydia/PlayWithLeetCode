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
        if let root = root {
            var ans = [root.val]
            ans += preorderTraversal(root.left)
            ans += preorderTraversal(root.right)
        	return ans
        } else {
        	return []
        }
    }
}