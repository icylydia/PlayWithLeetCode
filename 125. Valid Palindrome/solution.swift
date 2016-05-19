class Solution {
    func isPalindrome(s: String) -> Bool {
        let validSet: Set<Character> = Set("abcdefghijklmnopqrstuvwxyz0123456789".characters)
        let chars = s.lowercaseString.characters.filter { validSet.contains($0) }
        let str = String(chars)
        return str == String(str.characters.reverse())
    }
}