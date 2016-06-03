class Solution {
    func uniquePathsWithObstacles(obstacleGrid: [[Int]]) -> Int {
        let m = obstacleGrid.count
        let n = obstacleGrid[0].count
        var ans = Array<Array<Int>>()
        var firstLine = [Int](count: n, repeatedValue: 0)
        for i in 0..<n {
            if obstacleGrid[0][i] == 0 {
                firstLine[i] = 1
            } else {
                break
            }
        }
        ans.append(firstLine)
        for i in 1..<m {
            var line = [Int]()
            if(ans[i-1][0] == 0 || obstacleGrid[i][0] == 1) {
                line.append(0)
            } else {
                line.append(1)
            }
            for j in 1..<n {
                if(obstacleGrid[i][j] == 1) {
                    line.append(0)
                } else {
                    line.append(line[j-1] + ans[i-1][j])
                }
            }
            ans.append(line)
        }
        return ans[m-1][n-1]
    }
}
