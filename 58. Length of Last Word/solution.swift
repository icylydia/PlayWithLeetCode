class Solution {
    func lengthOfLastWord(s: String) -> Int {
        let array = s.characters.split{$0==" "}.map(String.init)
        return array.last?.characters.count ?? 0
    }
}