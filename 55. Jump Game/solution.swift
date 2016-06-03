class Solution {
    func canJump(nums: [Int]) -> Bool {
        var maxReach = 0
        for i in 0..<nums.count {
            if maxReach >= i {
                maxReach = max(maxReach, i + nums[i])
            }
        }
        return maxReach >= nums.count - 1
    }
}
