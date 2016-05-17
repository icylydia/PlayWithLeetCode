class Solution {
    func trailingZeroes(n: Int) -> Int {
        var idx = 5
        var ans = 0
        var p = n / idx
        while p != 0 {
        	ans += p
        	idx *= 5
        	p = n / idx
        }
        return ans
    }
}