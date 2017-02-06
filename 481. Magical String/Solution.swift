class Solution {
    func magicalString(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }
        if n <= 3 {
            return 1
        }
        var magic = [1,2,2]
        var idx = 2
        var cnt = 1
        var last = 2
        while magic.count < n {
            last = last == 1 ? 2 : 1
            if magic[idx] == 1 {
                magic.append(last)
                if last == 1 {
                    cnt += 1
                }
            } else {
                magic.append(last)
                magic.append(last)
                if last == 1 {
                    cnt += 2
                }
            }
            idx += 1
        }
        if magic.count == n {
            return cnt
        } else if magic.last == 2 {
            return cnt
        } else {
            return cnt - 1
        }
    }
}