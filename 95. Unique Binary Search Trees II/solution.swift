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
        var mySet = Set<TreeNode>()
        var repo = Array(1...n+1)
        allPermutation(repo, Array<Int>()) {
        	mySet.insert(TreeNode.generate($0))
        }
        return Array(mySet)
    }
    func allPermutation(repo: [Int],_ res: [Int], _ work: (res: [Int]) -> ()) {
    	if(repo.count == 0) {
    		work(res: res)
    	} else {
    		for element in repo {
    			allPermutation(repo.filter {$0 != element}, res + [element], work)
    		}
    	}
    }
}

extension TreeNode: Hashable, Equatable {
	class func generate(arr: [Int]) -> TreeNode {
		var ret = TreeNode(arr[0])
		if(arr.count > 1) {
			var j = -1
			for(var i = 1; i < arr.count; i++) {
				if(arr[i] > arr[0]) {
					j = i
					break
				}
			}
			var leftArr: [Int] = arr[1...j]
			var rightArr: [Int] = arr[j...arr.size()]
			if(leftArr.count > 0) {
				left = TreeNode.generate(leftArr)
			}
			if(rightArr.count > 0) {
				right = TreeNode.generate(rightArr)
			}
		}
		return ret
	}
	func description() -> String {
		var ret = String(val) + ","
		if(left != nil) {
			ret += left!.description()
			if(right != nil) {
				ret += right!.description()
			}
		} else {
			if(right != nil) {
				ret += "null,"
				ret += right!.description()
			}
		}
	}
	public var hashValue: Int {
        get {
            return description().hashValue
        }
    }
}
public func ==(lhs: TreeNode, rhs: TreeNode) -> Bool {
	return lhs.description == rhs.description
}