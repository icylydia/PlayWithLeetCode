class Solution {
    var ans = 0
    var n = 0
    func totalNQueens(n: Int) -> Int {
        self.n = n
        test([Int]())
        return ans
    }
    func test(base: [Int]) {
        if base.count == n {
            ans++
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
