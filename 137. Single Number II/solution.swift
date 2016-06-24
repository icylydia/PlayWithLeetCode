class Solution {
    func singleNumber(nums: [Int]) -> Int {
        var bit1 = 0
        var bit2 = 0
        for n in nums {
            let b1 = (bit2 & n) | (bit1 & ~n)
            let b2 = ~bit1 & (bit2 ^ n)
            bit1 = b1
            bit2 = b2
        }
        return bit2
    }
}