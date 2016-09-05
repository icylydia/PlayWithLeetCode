class Solution {
    func validUtf8(data: [Int]) -> Bool {
        var tail = 0
		for item in data {
			if tail == 0 {
				if item & 0b10000000 == 0 {
					continue
				} else if item & 0b11100000 == 0b11000000 {
					tail = 1
				} else if item & 0b11110000 == 0b11100000 {
					tail = 2
				} else if item & 0b11111000 == 0b11110000 {
					tail = 3
				} else {
					return false
				}
			} else {
				if item & 0b11000000 == 0b10000000 {
					tail--
				} else {
					return false
				}
			}
		}
		return tail == 0
    }
}