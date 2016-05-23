class Solution {
    func intersect(nums1: [Int], _ nums2: [Int]) -> [Int] {
        var map = Dictionary<Int, Int>()
        for num1 in nums1 {
        	if var v = map[num1] {
        		map[num1] = v + 1
        	} else {
        		map[num1] = 1
        	}
        }
        var arr = Array<Int>()
        for num2 in nums2 {
        	if let count = map[num2] where count > 0 {
        		map[num2]! = map[num2]! - 1
        		arr.append(num2)
        	}
        }
        return arr
    }
}