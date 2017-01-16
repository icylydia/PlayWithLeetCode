class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        let ans = nums.reduce((max: 0, current: 0), {
			if($1 == 0) {
				return ($0.max, 0)
			} else {
				return ($0.current + 1 > $0.max ? $0.current + 1: $0.max, $0.current + 1)
			}
		})
		return ans.max
    }
}