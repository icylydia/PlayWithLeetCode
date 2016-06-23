class Solution {
    func twoSum(nums: [Int], _ target: Int) -> [Int] {
        var dictionary = [Int: [Int]]()
        for i in 0..<nums.count {
            if var indexes = dictionary[nums[i]] {
                dictionary[nums[i]] = indexes + [i]
            } else {
                dictionary[nums[i]] = [i]
            }
        }
        for idx in 0..<nums.count {
            let x = nums[idx]
            let y = target - x
            if let idy = dictionary[y] {
                if x != y {
                    return [idx, idy[0]]
                } else if idy.count > 1 {
                    return [idx, idy[1]]
                }
            }
        }
        return [0]
    }
}