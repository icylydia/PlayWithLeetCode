class Solution {
    func diffWaysToCompute(input: String) -> [Int] {
    	let operatorSet: Set<Character> = ["+", "-", "*"]
    	let operators = Array(input.characters.filter{return operatorSet.contains($0)})
    	let emptyTrees = generateTrees(operators.count)
    	return [emptyTrees.count]
    }
    func generateTrees(n: Int) -> [TreeNode?] {
    	if n == 0 {
    		return Array<TreeNode?>()
    	}
    	let root: TreeNode? = TreeNode()
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
    			var mr = TreeNode()
    			mr.left = nil
    			mr.right = right?.copy()
    			tp.append(mr)
    		}
    		// right nil
    		for left in dp[i-1] {
    			var mr = TreeNode()
    			mr.left = left?.copy()
    			mr.right = nil
    			tp.append(mr)
    		}
    		// left + right
    		for j in 1..<i-1 {
    			for left in dp[j] {
    				for right in dp[i-1-j] {
    					var mr = TreeNode()
    					mr.left = left?.copy()
    					mr.right = right?.copy()
    					tp.append(mr)
    				}
    			}
    		}
    		dp.append(tp)
    	}
    	return dp[n]
    }
}
class TreeNode {
	var val: Int?
	var type: OperatorType?
	var left: TreeNode?
	var right: TreeNode?
	init() {
		self.val = nil
		self.type = nil
		self.left = nil
		self.right = nil
	}
	func copy() -> TreeNode {
		var root = TreeNode()
		root.left = self.left?.copy()
		root.right = self.right?.copy()
		return root
	}
}
enum OperatorType: Character {
	case Plus = "+"
	case Minus = "-"
	case Multiply = "*"
}