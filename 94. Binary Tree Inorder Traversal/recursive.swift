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
    func inorderTraversal(root: TreeNode?) -> [Int] {
        if let root = root {
            var ans = [Int]()
            ans += inorderTraversal(root.left)
            ans.append(root.val)
            ans += inorderTraversal(root.right)
            return ans
        } else {
            return []
        }
    }
}