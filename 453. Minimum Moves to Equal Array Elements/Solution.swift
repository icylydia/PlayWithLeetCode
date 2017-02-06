class Solution {
    func minMoves(_ nums: [Int]) -> Int {
        let minValue = nums.reduce(Int.max){min($0, $1)}
		return nums.reduce(0){$0 + $1 - minValue}
    }
}