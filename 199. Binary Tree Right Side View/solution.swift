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
    var ans = [Int]()
    func rightSideView(root: TreeNode?) -> [Int] {
        ans = [Int]()
        travel(root, depth: 1)
        return ans
    }
    func travel(root: TreeNode?, depth: Int) {
        if let root = root {
            if ans.count >= depth {
                ans[depth - 1] = root.val
            } else {
                ans.append(root.val)
            }
            travel(root.left, depth: depth + 1)
            travel(root.right, depth: depth + 1)
        } else {
            return
        }
    }
}
