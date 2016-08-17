class Solution {
    func canConstruct(ransomNote: String, _ magazine: String) -> Bool {
		var bucket = Dictionary<Character, Int>()
		for c in magazine.characters {
			if let count = bucket[c] {
				bucket[c] = count + 1
			} else {
				bucket[c] = 1
			}
		}
		for c in ransomNote.characters {
			if let count = bucket[c] where count > 0 {
				bucket[c] = count - 1
			} else {
				return false
			}
		}
        return true
    }
}