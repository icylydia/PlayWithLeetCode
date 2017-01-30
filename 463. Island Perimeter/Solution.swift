class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var ans = 0
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if(grid[i][j] == 1) {
                    if i == 0 || grid[i-1][j] == 0 {
                        ans += 1
                    }
                    if j == 0 || grid[i][j-1] == 0 {
                        ans += 1
                    }
                    if i == grid.count - 1 || grid[i+1][j] == 0 {
                        ans += 1
                    }
                    if j == grid[i].count - 1 || grid[i][j+1] == 0 {
                        ans += 1
                    }
                }
            }
        }
        return ans
    }
}