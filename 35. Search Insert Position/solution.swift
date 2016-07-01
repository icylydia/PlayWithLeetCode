class Solution {
    func searchInsert(nums: [Int], _ target: Int) -> Int {
        if nums.count == 0 {
            return 0
        }
        if target > nums.last! {
            return nums.count
        }
        var m = 0
        var n = nums.count - 1
        while m != n {
            let mid = (m + n) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                m = mid + 1
            } else {
                n = mid
            }
        }
        return m
    }
}
