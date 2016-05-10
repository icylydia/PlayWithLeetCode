class Solution {
    func moveZeroes(inout nums: [Int]) {
        var writer = 0
        var reader = 0
        while(reader < nums.count) {
        	if(nums[reader] == 0) {
        		reader++
        	} else {
        		nums[writer] = nums[reader]
        		reader++
        		writer++
        	}
        }
        while(writer < nums.count) {
        	nums[writer] = 0
        	writer++
        }
    }
}