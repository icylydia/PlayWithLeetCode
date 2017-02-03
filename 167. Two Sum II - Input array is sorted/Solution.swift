class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
		for idx in 0..<numbers.count {
			let cand = numbers[idx]
			var st = idx + 1
			var ed = numbers.count - 1
			if cand + numbers[ed] < target {
				continue
			}
			if st == ed {
				return [idx + 1, st + 1]
			}
			while st < ed {
				if cand + numbers[st] == target {
					return [idx + 1, st + 1]
				} else if cand + numbers[ed] == target {
					return [idx + 1, ed + 1]
				} else {
					let mid = (st + ed) / 2
					if cand + numbers[mid] < target {
						st = mid + 1
					} else {
						ed = mid
					}
				}
			}
		}
		return [0]
    }
}