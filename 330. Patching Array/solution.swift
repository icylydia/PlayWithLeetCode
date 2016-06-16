class Solution {
    func minPatches(nums: [Int], _ n: Int) -> Int {
        var patch = 0
        if n < 1 {
            return 0
        }
        var contents = [Int]()
        var maxes = [Int]()
		var nums = nums
        if nums.count == 0 || nums[0] > 1 {
			nums = [1] + nums
            patch++
		}
        contents.append(1)
		maxes.append(1)
		var index = 1
		var count = nums.count
		while let max = maxes.last where max < n {
			if index < count && nums[index] <= max + 1 {
				contents.append(nums[index])
				maxes.append(max + nums[index])
				index++
			} else {
				contents.append(max + 1)
				maxes.append(max + max + 1)
				patch++
			}
		}
		return patch
    }
}
