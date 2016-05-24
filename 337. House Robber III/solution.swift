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
    func rob(root: TreeNode?) -> Int {
    	var planTree = root?.copy()
    	return max(plan(planTree).rob, plan(planTree).nonRob)
    }
    func plan(root: RobberPlanTreeNode?) -> (rob: Int, nonRob: Int) {
    	if let root = root {
    		if root.rob == nil {
    			root.rob = root.val + plan(root.lt).nonRob + plan(root.rt).nonRob
    		}
    		if root.nonRob == nil {
    			root.nonRob = max(plan(root.lt).rob, plan(root.lt).nonRob) + max(plan(root.rt).rob, plan(root.rt).nonRob)
    		}
    		return (root.rob!, root.nonRob!)
    	} else {
    		return (0, 0)
    	}
    }
}
class RobberPlanTreeNode: TreeNode {
	var rob: Int?
	var nonRob: Int?
	var lt: RobberPlanTreeNode?
	var rt: RobberPlanTreeNode?
}
extension TreeNode {
	func copy() -> RobberPlanTreeNode {
		let root = RobberPlanTreeNode(val)
		let lt = left?.copy()
		let rt = right?.copy()
		root.lt = lt
		root.rt = rt
		return root
	}
}