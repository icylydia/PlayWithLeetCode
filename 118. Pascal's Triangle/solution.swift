class Solution {
    func generate(numRows: Int) -> [[Int]] {
    	if numRows == 0 {
    		return Array<Array<Int>>()
    	}
    	var ans = [[1]]
    	for i in 1..<numRows {
    		var line = [1]
    		for j in 0..<ans[i-1].count-1 {
    			line.append(ans[i-1][j] + ans[i-1][j+1])
    		}
    		line.append(1)
    		ans.append(line)
    	}
    	return ans
    }
}