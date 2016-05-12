class Solution {
    func romanToInt(s: String) -> Int {
        let map: [Character: Int] = [
        	"I": 1,
        	"V": 5,
        	"X": 10,
        	"L": 50,
        	"C": 100,
        	"D": 500,
        	"M": 1000
        ]
        var res = 0
        for var i = s.startIndex ; i != s.endIndex ; i = i.advancedBy(1) {
            var nxt = i.advancedBy(1)
        	if nxt != s.endIndex && map[s[i]] < map[s[nxt]] {
        		res -= map[s[i]]!
        	} else {
        		res += map[s[i]]!
        	}
        }
        return res
    }
}