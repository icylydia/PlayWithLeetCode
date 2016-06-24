class Solution {
    func lengthOfLIS(nums: [Int]) -> Int {
        var ans = [Int.min]
        for n in nums {
            if n > ans.last! {
                ans.append(n)
            } else {
                let idx = binarySearch(ans, n)
                ans[idx] = n
            }
        }
        return ans.count - 1 
    }
    func binarySearch(nums: [Int], _ value: Int) -> Int {
        var m = 0, n = nums.count - 1
        while m != n {
            let mid = (m + n) / 2
            if nums[mid] < value {
                m = mid + 1
            } else {
                n = mid
            }
        }
        return m
    }
}