class Solution {
    func isAnagram(s: String, _ t: String) -> Bool {
        return s.characters.sort() == t.characters.sort()
    }
}