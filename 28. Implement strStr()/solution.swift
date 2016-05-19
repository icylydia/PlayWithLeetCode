class Solution {
    func strStr(haystack: String, _ needle: String) -> Int {
        let lenHaystack = haystack.characters.count
        let lenNeedle = needle.characters.count
        if lenHaystack < lenNeedle {
            return -1
        }
        for i in 0...(lenHaystack - lenNeedle) {
        	let sub = haystack.substringWithRange(
        		haystack.startIndex.advancedBy(i)..<haystack.startIndex.advancedBy(i+lenNeedle))
        	if sub == needle {
        		return i
        	}
        }
        return -1
    }
}