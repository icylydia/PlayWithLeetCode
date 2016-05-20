class Solution {
    func missingNumber(nums: [Int]) -> Int {
        var xor = 0
        for x in 0...nums.count {
        	xor ^= x
        }
        for num in nums {
        	xor ^= num
        }
        return xor
    }
}