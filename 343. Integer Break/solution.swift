class Solution {
    func integerBreak(n: Int) -> Int {
    	if n <= 4 {
    		return [0,0,1,2,4][n]
    	}
        var dp = [0,0,2,3,4]
        for i in 5...n {
        	var vmax = 1
        	for j in 2...(i / 2) {
        		vmax = max(vmax, dp[j] * dp[i-j])
        	}
        	dp.append(vmax)
        }
        return dp.last!
    }
}