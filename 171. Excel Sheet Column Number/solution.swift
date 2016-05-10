class Solution {
    func titleToNumber(s: String) -> Int {
        var ret = 0
        for scalar in s.unicodeScalars {
        	ret *= 26
        	ret += Int(scalar.value - UInt32(64))
        }
        return ret
    }
}