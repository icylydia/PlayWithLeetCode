class Solution {
    func sortColors(inout nums: [Int]) {
        var c0 = 0, c1 = 0
        for e in nums {
            switch e {
                case 0:
                c0++
                case 1:
                c1++
                default:
                break
            }
        }
        c1 += c0
        let count = nums.count
        for i in 0..<count {
            nums[i] = i < c0 ? 0 : (i < c1 ? 1 : 2)
        }
    }
}