class Solution {
    func merge(inout nums1: [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        for _ in 0..<nums1.count - m {
            nums1.removeLast()
        }
    	nums1 += nums2
    	nums1.sortInPlace(<)
    }
}