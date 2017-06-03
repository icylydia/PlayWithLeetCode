class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        var ans = 0
        for i in 0..<sorted.count {
            if i % 2 == 0 {
                ans = ans + sorted[i]
            }
        }
        return ans
    }
}