class Solution {
    func majorityElement(nums: [Int]) -> Int {
        var element = 0
        var count = 0
        for num in nums {
        	if num == element {
        		count++
        	} else {
        		count--
        	}
        	if count < 0 {
        		element = num
        		count = 1
        	}
        }
        return element
    }
}