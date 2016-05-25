class Solution {
    var ans = [[Int]]()
    var n = 0
    func solveNQueens(n: Int) -> [[String]] {
        self.n = n
        test([Int]())
        return ans.map{$0.map{
            var z = ""
            for i in 0..<n {
                z += (i == $0) ? "Q" : "."
            }
            return z
        }}
    }
    func test(base: [Int]) {
        if base.count == n {
            ans.append(base)
            return
        }
        for candidate in 0..<n {
            var legal = true
            for i in 0..<base.count {
                let v = base[i]
                if v == candidate {
                    legal = false
                    break
                }
                if (v - i) == (candidate - base.count) {
                    legal = false
                    break
                }
                if (v + i) == (candidate + base.count) {
                    legal = false
                    break
                }
            }
            if legal {
                test(base + [candidate])
            }
        }
    }
}
