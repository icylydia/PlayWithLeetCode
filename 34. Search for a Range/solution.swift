class Solution {
    func searchRange(nums: [Int], _ target: Int) -> [Int] {
        var aMin = 0, aMax = nums.count - 1
        while aMin < aMax {
            let aMid = (aMin + aMax) / 2
            if nums[aMid] >= target {
                aMax = aMid
            } else {
                aMin = aMid + 1
            }
        }
        if nums[aMin] != target {
            return [-1, -1]
        }
        var bMin = 0, bMax = nums.count - 1
        while bMin < bMax {
            let bMid = (bMin + bMax + 1) / 2
            if nums[bMid] <= target {
                bMin = bMid
            } else {
                bMax = bMid - 1
            }
        }
        return [aMin, bMin]
    }
}
