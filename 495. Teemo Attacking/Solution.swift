class Solution {
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
        var ans = 0
		var last = 0
		for timePoint in timeSeries {
			if timePoint + duration > last {
				ans += duration - (last > timePoint ? last - timePoint : 0)
				last = timePoint + duration
			}
		}
		return ans
    }
}