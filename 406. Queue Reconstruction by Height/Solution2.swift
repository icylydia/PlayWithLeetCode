class Solution {
    func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
		let sorted = people.sorted {
            if $0[0] == $1[0] {
                return $0[1] < $1[1]
            } else {
                return $0[0] > $1[0]
            }
        }
		var ans = [[Int]]()
		for person in sorted {
			ans.insert(person, at: person[1])
		}
		return ans
	}
}