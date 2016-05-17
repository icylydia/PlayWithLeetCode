class Solution {
    func plusOne(digits: [Int]) -> [Int] {
        var ans = [Int]()
        var carry = 1
        var count = digits.count
        for i in 0..<count {
        	var value = digits[count - i - 1] + carry
        	ans.append(value % 10)
        	carry = value / 10
        }
        if carry > 0 {
        	ans.append(carry)
        }
        return ans.reverse()
    }
}