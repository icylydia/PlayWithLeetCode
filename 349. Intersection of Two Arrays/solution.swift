class Solution {
    func intersection(nums1: [Int], _ nums2: [Int]) -> [Int] {
        var set1 = Set<Int>()
        for num in nums1 {
        	set1.insert(num)
        }
        var set2 = Set<Int>()
        for num in nums2 {
        	if set1.contains(num) {
        		set2.insert(num)
        	}
        }
        return Array(set2)
    }
}