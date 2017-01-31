class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
		if nums.count == 0 {
			return nums
		}
        var ans = [Int]()
		var s = nums
		var i = 0
		while i < s.count {
			if s[i] < 0 {
				i += 1
			} else if s[i] == i + 1 {
				s[i] = -(i + 1)
				i += 1
			} else if s[s[i] - 1] < 0 {
				i += 1
			} else {
				let t = s[i]
				s[i] = s[t - 1]
				s[t - 1] = -t
			}
		}
		for i in 1...s.count {
			if s[i-1] > 0 {
				ans.append(i)
			}
		}
		return ans
    }
}