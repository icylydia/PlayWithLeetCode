class Solution {
    func subsets(nums: [Int]) -> [[Int]] {
        let nums = nums.sort(<)
        let count = Int(pow(Double(2), Double(nums.count)))
        var ans = [[Int]]()
        for i in 0..<count {
            var block = [Int]()
            var p = i
            var idx = 0
            while p != 0 {
                if (p & 1) != 0 {
                    block.append(nums[idx])
                }
                p >>= 1
                idx++
            }
            ans.append(block)
        }
        return ans
    }
}
