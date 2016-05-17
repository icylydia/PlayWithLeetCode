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
    func isSymmetric(root: TreeNode?) -> Bool {
        if let root = root {
        	return dfs(root.left, .Left) == dfs(root.right, .Right)
        } else {
        	return true
        }
    }
    func dfs(root: TreeNode?, _ priority: DFSPriority) -> String {
    	if let root = root {
    		if priority == .Left {
    			return dfs(root.left, priority) + dfs(root.right, priority) + String(root.val)
    		} else {
    			return dfs(root.right, priority) + dfs(root.left, priority) + String(root.val)
    		}
    	} else {
    		return " "
    	}
    }
    enum DFSPriority {
    	case Left, Right
    }
}