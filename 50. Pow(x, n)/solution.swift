class Solution {
    func myPow(x: Double, _ n: Int) -> Double {
        if n == 0 {
            return 1
        }
        if n == 1 {
            return x
        }
        if n == -1 {
            return 1/x
        }
        let positive = n > 0
        let n = positive ? n : -n
        var tower = [x]
        var pt = 2
        while pt <= n {
            tower.append(tower.last! * tower.last!)
            pt *= 2
        }
        var ans = 1.0
        var m = n
        while m > 0 {
            var pt = 1
            var idx = 0
            while pt * 2 < m {
                pt *= 2
                idx++
            }
            ans *= tower[idx]
            m -= pt
        }
        return positive ? ans : 1/ans
    }
}