class Solution {
    func uniquePaths(m: Int, _ n: Int) -> Int {
        var ans = Array<Array<Int>>()
        var firstLine = [Int](count: n, repeatedValue: 1)
        ans.append(firstLine)
        for i in 1..<m {
            var line = [1]
            for j in 1..<n {
                line.append(line[j-1] + ans[i-1][j])
            }
            ans.append(line)
        }
        return ans[m-1][n-1]
    }
}
