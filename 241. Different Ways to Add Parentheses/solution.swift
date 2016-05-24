class Solution {
    func diffWaysToCompute(input: String) -> [Int] {
        let operatorSet: Set<Character> = ["+", "-", "*"]
        let operators = Array(input.characters.filter{return operatorSet.contains($0)})
        let numbers = input.characters.split{operatorSet.contains($0)}
                    .map(String.init).map{Int($0)!}
        if operators.count < 1 {
            return numbers
        }
        let emptyTrees = generateTrees(operators.count)
        for tree in emptyTrees {
            var operators = operators
            buildOperatorTree(tree, &operators)
        }
        for tree in emptyTrees {
            var numbers = numbers
            buildNumberTree(tree, &numbers)
        }
        return emptyTrees.map{solveNumberTree($0)}
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
    func buildOperatorTree(root: TreeNode?, inout _ operators: Array<Character>) {
        if let root = root {
            buildOperatorTree(root.left, &operators)
            root.type = OperatorType(rawValue: operators.removeFirst())
            buildOperatorTree(root.right, &operators)
        }
    }
    func buildNumberTree(root: TreeNode?, inout _ numbers: Array<Int>) {
        if let root = root {
            if root.type == nil {
                return
            }
            if root.left == nil {
                let left = TreeNode()
                left.val = numbers.removeFirst()
                root.left = left
            } else {
                buildNumberTree(root.left, &numbers)
            }
            if root.right == nil {
                let right = TreeNode()
                right.val = numbers.removeFirst()
                root.right = right
            } else {
                buildNumberTree(root.right, &numbers)
            }
        }
    }
    func solveNumberTree(root: TreeNode?) -> Int {
        if let root = root {
            if let type = root.type {
                switch type {
                case .Plus:
                    return solveNumberTree(root.left) + solveNumberTree(root.right)
                case .Minus:
                    return solveNumberTree(root.left) - solveNumberTree(root.right)
                case .Multiply:
                    return solveNumberTree(root.left) * solveNumberTree(root.right)
                }
            } else {
                return root.val!
            }
        } else {
            return 0
        }
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