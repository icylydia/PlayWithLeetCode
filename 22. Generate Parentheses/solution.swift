class Solution {
    var ans = [String]()
    var total = 0
    func generateParenthesis(n: Int) -> [String] {
        total = n
        helper(n, 0, "")
        return ans
    }
    private func helper(left: Int, _ opened: Int, _ status: String) {
        if left == 0 {
            var str = status
            for _ in 0..<opened {
                str += ")"
            }
            ans.append(str)
            return
        }
        if opened == 0 {
            helper(left - 1, 1, status + "(")
            return
        } else {
            helper(left, opened - 1, status + ")")
            helper(left - 1, opened + 1, status + "(")
        }
    }
}