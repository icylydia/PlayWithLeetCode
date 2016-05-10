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
    func isSameTree(p: TreeNode?, _ q: TreeNode?) -> Bool {
        if let pp = p, qq = q where pp.val == qq.val {
        	return isSameTree(pp.left, qq.left) && isSameTree(pp.right, qq.right)
        } else {
        	if(p == nil && q == nil) {
        		return true
        	} else {
        		return false
        	}
        }
    }
}