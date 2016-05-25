class Solution {
    func maxSubArray(nums: [Int]) -> Int {
    	if nums.count < 1 {
    		return 0
    	}
        var chosen = Array<Int>()
        var skipped = Array<Int>()
        chosen.append(nums[0])
        skipped.append(Int.min)
        for i in 1..<nums.count {
        	let x = nums[i]
        	let iChosen = max(x, chosen[i-1] + x)
        	let iSkipped = max(chosen[i-1], skipped[i-1])
        	chosen.append(iChosen)
        	skipped.append(iSkipped)
        }
        return max(chosen.last!, skipped.last!)
    }
}