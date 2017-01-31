class Solution {
    func constructRectangle(_ area: Int) -> [Int] {
        var max = Int(sqrt(Double(area)))
		while true {
			if area % max == 0 {
				return [area / max, max]
			}
			max -= 1
		}
    }
}