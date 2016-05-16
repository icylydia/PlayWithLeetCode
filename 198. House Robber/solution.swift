class Solution {
    func rob(nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        var maxRob = [nums[0]]
        var maxNon = [0]
        if nums.count > 1 {
        	for i in 1..<nums.count {
        		let rob = maxNon.last! + nums[i]
        		let non = max(maxRob.last!, maxNon.last!)
        		maxRob.append(rob)
        		maxNon.append(non)
        	}
        }
        return max(maxRob.last!, maxNon.last!)
    }
}