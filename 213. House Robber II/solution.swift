class Solution {
    func rob(nums: [Int]) -> Int {
        if nums.count < 1 {
            return 0
        }
        var RaR = [nums[0], nums[0]]
        var RaN = [nums[0], nums[0]]
        if nums.count >= 3 {
            for i in 2..<nums.count {
                let rob = RaN.last! + nums[i]
                let non = max(RaR.last!, RaN.last!)
                RaR.append(rob)
                RaN.append(non)
            }
        }
        let maxRa = RaN.last!
        var NaR = [0]
        var NaN = [0]
        if nums.count >= 2 {
            for i in 1..<nums.count {
                let rob = NaN.last! + nums[i]
                let non = max(NaR.last!, NaN.last!)
                NaR.append(rob)
                NaN.append(non)
            }
        }
        let maxNa = max(NaR.last!, NaN.last!)
        return max(maxRa, maxNa)
    }
}