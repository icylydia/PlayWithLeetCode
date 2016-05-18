class Solution {
    func wordPattern(pattern: String, _ str: String) -> Bool {
        var dictionary = Dictionary<Character, String>()
        var array = str.characters.split{$0==" "}.map(String.init)
        if pattern.characters.count != array.count {
        	return false
        }
        for var idxp = pattern.startIndex,
        	idxa = 0;
        	idxp < pattern.endIndex;
        	idxp = idxp.advancedBy(1),
        	idxa++ {
        	if let v = dictionary[pattern[idxp]] where v != array[idxa] {
        		return false
        	} else {
        		dictionary[pattern[idxp]] = array[idxa]
        	}
        }
        var vSet = Set<String>()
        for (_, v) in dictionary {
        	if vSet.contains(v) {
        		return false
        	} else {
        		vSet.insert(v)
        	}
        }
        return true
    }
}