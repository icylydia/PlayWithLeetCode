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
    func invertTree(root: TreeNode?) -> TreeNode? {
        if let zroot = root {
        	let temp = zroot.left
        	zroot.left = zroot.right
        	zroot.right = temp
        	invertTree(zroot.left)
        	invertTree(zroot.right)
        }
        return root
    }
}