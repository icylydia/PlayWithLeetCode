class Solution {
    func climbStairs(n: Int) -> Int {
        var dp = [0,1,2]
        if n < 3 {
            return dp[n]
        }
        for i in 3...n {
        	dp += [dp[i-1] + dp[i-2]] 
        }
        return dp[n]
    }
}