class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let sg = g.sorted()
		let ss = s.sorted()
		var contented = 0
		var min = 0
		for child in sg {
			if min < ss.count {
				for test in min..<ss.count {
					min = test + 1
					if ss[test] >= child {
						contented += 1
						break
					}
				}
			} else {
				break
			}
		}
		return contented
    }
}