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
    func isBalanced(root: TreeNode?) -> Bool {
        return swiftBalanced(root).balanced
    }
    private func swiftBalanced(root: TreeNode?) -> (balanced: Bool, depth: Int) {
    	if let root = root {
    		let sbl = swiftBalanced(root.left)
    		let sbr = swiftBalanced(root.right)
    		return (sbl.balanced && sbr.balanced && (abs(sbl.depth - sbr.depth) <= 1) , max(sbl.depth, sbr.depth) + 1)
    	} else {
    		return (true, 0)
    	}
    }
}