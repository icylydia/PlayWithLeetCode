class Solution {
    func numTrees(n: Int) -> Int {
        var dp = [1, 1]
        if n < 2 {
            return dp[n]
        }
        for i in 2...n {
        	var t = 0
        	for j in 0..<i {
        		t += dp[j] * dp[i-j-1]
        	}
        	dp.append(t)
        }
        return dp.last!
    }
}