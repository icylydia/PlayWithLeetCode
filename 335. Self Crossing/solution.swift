class Solution {
    func isSelfCrossing(x: [Int]) -> Bool {
        if x.count < 4 {
            return false
        }
        var limits = [Int]()
        for a in x {
            limits.append(a)
            if limits.count <= 3 {
                continue
            }
            if limits[2] <= limits[0] && limits[3] >= limits[1] {
                return true
            }
            if limits.count >= 5 && limits[1] == limits[3] && limits[0] + limits[4] >= limits[2] {
                return true
            }
            if limits.count >= 6 {
                if limits[3] > limits[1] && limits[1] + limits[5] >= limits[3] && limits[2] > limits[4] && limits[4] + limits[0] >= limits[2] {
                    return true
                }
                limits.removeFirst()
            }
        }
        return false
    }
}