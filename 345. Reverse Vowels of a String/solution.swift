class Solution {
    func reverseVowels(s: String) -> String {
        let vowels: Set<Character> = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
        var ans = ""
        var revVowels = Array<Character>()
        for character in s.characters {
        	if vowels.contains(character) {
        		revVowels.append(character)
        	}
        }
        for character in s.characters {
        	if vowels.contains(character) {
        		ans.append(revVowels.removeLast())
        	} else {
        		ans.append(character)
        	}
        }
        return ans
    }
}