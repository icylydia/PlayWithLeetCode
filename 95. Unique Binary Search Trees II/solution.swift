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
    func generateTrees(n: Int) -> [TreeNode?] {
    	if n == 0 {
    		return Array<TreeNode?>()
    	}
    	let root: TreeNode? = TreeNode(1)
    	var dp = Array<Array<TreeNode?>>()
    	let dp0 = Array<TreeNode?>()
    	dp.append(dp0)
    	let dp1 = [root]
    	dp.append(dp1)
    	if n == 1 {
    		return dp[1]
    	}
    	for i in 2...n {
    		var tp = Array<TreeNode?>()
    		// left nil
    		for right in dp[i-1] {
    			var mr = TreeNode(1)
    			mr.left = nil
    			mr.right = right?.copy()
    			tp.append(mr)
    		}
    		// right nil
    		for left in dp[i-1] {
    			var mr = TreeNode(1)
    			mr.left = left?.copy()
    			mr.right = nil
    			tp.append(mr)
    		}
    		// left + right
    		for j in 1..<i-1 {
    			for left in dp[j] {
    				for right in dp[i-1-j] {
    					var mr = TreeNode(1)
    					mr.left = left?.copy()
    					mr.right = right?.copy()
    					tp.append(mr)
    				}
    			}
    		}
    		dp.append(tp)
    	}
    	for tree in dp[n] {
    		dfs(0, tree)
    	}
    	return dp[n]
    }
    func dfs(base: Int, _ root: TreeNode?) -> Int {
    	if let root = root {
    		let left = dfs(base, root.left)
    		root.val = left + 1
    		let right = dfs(left + 1, root.right)
    		return right
    	} else {
    		return base
    	}
    }
}
extension TreeNode {
	func copy() -> TreeNode {
		var root = TreeNode(self.val)
		root.left = self.left?.copy()
		root.right = self.right?.copy()
		return root
	} 
}