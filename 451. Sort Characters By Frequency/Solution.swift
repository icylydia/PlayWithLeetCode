class Solution {
    func frequencySort(_ s: String) -> String {
        var dict = [Character: Int]()
		for c in s.characters {
			if let n = dict[c] {
                dict[c] = n + 1
            } else {
                dict[c] = 1
            }
		}
        let sortedKeys = dict.keys.sorted{dict[$0]! > dict[$1]!}
        var ans = ""
        for key in sortedKeys {
            for _ in 0..<dict[key]! {
                ans += String(key)
            }
        }
        return ans
    }
}