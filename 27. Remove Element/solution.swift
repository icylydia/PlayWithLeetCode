class Solution {
    func removeElement(inout nums: [Int], _ val: Int) -> Int {
        var length = nums.count
        var iValue = length - 1
        var iNone = length - 1
        for ; iValue >= 0 ; iValue-- {
        	if nums[iValue] == val {
        		length--
        		for ; iNone >= 0 ; iNone-- {
        			if nums[iNone] != val {
        			    if iNone > iValue {
        				    nums[iValue] = nums[iNone]
        				    nums[iNone] = val
        				}
        				break
        			}
        		}
        	}
        }
        return length
    }
}