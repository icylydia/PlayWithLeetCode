class Solution {
    func containsNearbyDuplicate(nums: [Int], _ k: Int) -> Bool {
        var map = Dictionary<Int, Array<Int>>()
        for i in 0..<nums.count {
        	if var element = map[nums[i]] {
        		element.append(i)
        		map[nums[i]] = element
        	} else {
        		map[nums[i]] = [i]
        	}
        }
        for (index, array) in map {
        	if array.count < 2 {
        		continue
        	} else {
        		for i in 1..<array.count {
        			if array[i] - array[i-1] <= k {
        				return true
        			}
        		}
        	}
        }
        return false
    }
}