class Solution {
    func numDecodings(s: String) -> Int {
        if s.characters.count == 0 {
            return 0
        }
        var before = Character("0")
        var m1 = 1
        var m2 = 1
        var m3 = 0
        let twoSet: Set<Character> = ["1", "2", "3", "4", "5", "6"]
        for c in s.characters {
            if c == "0" && (before != "1" && before != "2") {
                return 0
            }
            if c == "0" {
                m3 = m1
            } else if (before == "1") || (before == "2" && twoSet.contains(c)) {
                m3 = m1 + m2
            } else {
                m3 = m2
            }
            m1 = m2
            m2 = m3
            before = c
        }
        return m3
    }
}