class Solution {
    func twoSum(nums: [Int], _ target: Int) -> [Int] {
        for(var i = 0; i < nums.count ; i++) {
        	for(var j = i + 1; j < nums.count; j ++) {
        		if(nums[i] + nums[j] == target) {
        			return [i, j]
        		}
        	}
        }
        return [0]
    }
}