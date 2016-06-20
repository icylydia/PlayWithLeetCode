class Solution {
    func sortColors(inout nums: [Int]) {
        if nums.count <= 1 {
            return
        }
        let count = nums.count
        var p0 = 0
        while p0 < count && nums[p0] == 0 {
            p0++
        }
        var p2 = nums.count - 1
        while p2 >= 0 && nums[p2] == 2 {
            p2--
        }
        var p = p0
        while p <= p2 && p2 > p0 {
            if nums[p] == 1 {
                p++
                continue
            }
            if nums[p] == 2 {
                nums[p] = nums[p2]
                nums[p2] = 2
                p2--
                while p0 < count && nums[p2] == 2 {
                    p2--
                }
            }
            if nums[p] == 0 {
                nums[p] = nums[p0]
                nums[p0] = 0
                p0++
                while p2 >= 0 && nums[p0] == 0 {
                    p0++
                }
            }
            p++
        }
    }
}