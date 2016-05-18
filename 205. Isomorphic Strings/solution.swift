class Solution {
    func isIsomorphic(s: String, _ t: String) -> Bool {
    	if s.characters.count != t.characters.count {
    		return false
    	}
        var dictionary = Dictionary<Character, Character>()
        for var indexS = s.startIndex, indexT = t.startIndex;
        	indexS < s.endIndex && indexT < t.endIndex ;
        	indexS = indexS.advancedBy(1), indexT = indexT.advancedBy(1) {
        		dictionary[s[indexS]] = t[indexT]
        }
        var mapSet = Set<Character>()
        for (_, v) in dictionary {
        	if mapSet.contains(v) {
        		return false
        	} else {
        		mapSet.insert(v)
        	}
        }
        let replacedS = String(s.characters.map{dictionary[$0]!})
        return replacedS == t
    }
}