class Solution {
    func removeDuplicates(inout nums: [Int]) -> Int {
    	if nums.count == 0 {
    		return 0
    	}
    	var ref = nums[0]
        for var i = 1 ; i < nums.count ; i++ {
        	if nums[i] == ref {
        		nums.removeAtIndex(i)
        		i--
        	} else {
        		ref = nums[i]
        	}
        }
        return nums.count
    }
}