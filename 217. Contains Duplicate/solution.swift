class Solution {
    func containsDuplicate(nums: [Int]) -> Bool {
        var hash = Set<Int>()
        for num in nums {
        	if hash.contains(num) {
        		return true
        	} else {
        		hash.insert(num)
        	}
        }
        return false
    }
}