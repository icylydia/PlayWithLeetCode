class Solution {
    func numberOfArithmeticSlices(_ A: [Int]) -> Int {
        var ans = 0
		if A.count < 3 {
			return ans
		}
		var p1 = A[0]
		var p2 = A[1]
		var diff = p2 - p1
		var acc = 0
		for i in 2..<A.count {
			if A[i] - p2 == diff {
				acc += 1
				p1 = p2
				p2 = A[i]
			} else {
				if acc > 0 {
					ans += sum1ToN(acc)
				}
				acc = 0
				p1 = p2
				p2 = A[i]
				diff = p2 - p1
			}
		}
		if acc > 0 {
			ans += sum1ToN(acc)
		}
		return ans
    }
	func sum1ToN(_ n: Int) -> Int {
		return (n + 1) * n / 2
	}
}