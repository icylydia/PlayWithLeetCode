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
    func kthSmallest(root: TreeNode?, _ k: Int) -> Int {
        let (ans, _) = kthSmallestHelper(root, k)
        return ans
    }
    func kthSmallestHelper(root: TreeNode?, _ k: Int) -> (countOrAns: Int, found: Bool) {
    	if let root = root {
    		let (leftCountOrAns, leftFound) = kthSmallestHelper(root.left, k)
    		if leftFound {
    			return (leftCountOrAns, true)
    		}
    		if k - leftCountOrAns == 1 {
    			return (root.val, true)
    		}
    		let (rightCountOrAns, rightFound) = kthSmallestHelper(root.right, k - leftCountOrAns - 1)
    		if rightFound {
    			return (rightCountOrAns, rightFound)
    		} else {
    			return (leftCountOrAns + rightCountOrAns + 1, false)
    		}
    	} else {
    		return (0, false)
    	}
    }
}