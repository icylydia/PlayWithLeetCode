class Solution {
    func findMin(nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        if nums.count == 2 {
            return min(nums[0], nums[1])
        }
        if nums.first! < nums.last! {
            return nums.first!
        }
        let mid = (nums.count - 1) / 2
        if nums[0] < nums[mid] {
            return findMin(Array(nums[(mid + 1)..<nums.count]))
        } else {
            return findMin(Array(nums[0...mid]))
        }
    }
}