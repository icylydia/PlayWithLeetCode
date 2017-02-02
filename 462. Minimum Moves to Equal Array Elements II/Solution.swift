class Solution {
    func minMoves2(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
		let std = sorted[nums.count / 2]
		return nums.reduce(0){ $0 + abs( $1 - std ) }
    }
}