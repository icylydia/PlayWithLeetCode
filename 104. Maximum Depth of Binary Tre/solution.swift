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
    func maxDepth(root: TreeNode?) -> Int {
    	if let zroot = root {
    		return 1 + max(maxDepth(zroot.left), maxDepth(zroot.right))
    	} else {
    		return 0
    	}
    }
}