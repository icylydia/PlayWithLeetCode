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
    func levelOrder(root: TreeNode?) -> [[Int]] {
        var ans = Array<Array<Int>>()
    	var line = Array<Int>()
    	var q = Queue<(treeNode: TreeNode?, flag: Bool)>()
    	if let root = root {
    		q.push((root, true))
    		while !q.isEmpty {
    			let top = q.pop()
    			if let val = top.treeNode?.val {
    				line.append(val)
    			}
    			if top.flag {
    				if line.count == 0 {
    					break
    				}
    				ans.append(line)
    				line = Array<Int>()
    				if let left = top.treeNode?.left {
    				    q.push((left, false))
    				}
    				q.push((top.treeNode?.right, true))
    			} else {
    				if let left = top.treeNode?.left {
    				    q.push((left, false))
    				}
    				if let right = top.treeNode?.right {
    				    q.push((right, false))
    				}
    			}
    		}
    	}
        return ans
    }
}
struct Queue<Element> {
	var items = [Element]()
	private var iterator = -1
	var isEmpty: Bool {
		return items.count - iterator == 1
	}
	mutating func push(item: Element) {
		items.append(item)
	}
	mutating func pop() -> Element {
		iterator++
		return items[iterator]
	}
}