class Solution {
	func isPowerOfTwo(n: Int) -> Bool {
		if n == 0 {
			return false
		}
		var m = n
		while m != 0 {
			if (m & 1) == 1 {
				if (m >> 1) == 0 {
					return true
				} else {
					return false
				}
			} else {
				m = m >> 1
			}
		}
		return false
	}
}