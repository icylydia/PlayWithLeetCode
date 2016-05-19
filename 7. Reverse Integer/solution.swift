class Solution {
    func reverse(x: Int) -> Int {
        var str = String(x)
        let signed = str.characters.first! == "-"
        if signed {
        	var range = str.startIndex.advancedBy(1)..<str.endIndex
        	str = str[range]
        	let rev = String(str.characters.reverse())
        	var max = String(Int32.min)
        	range = max.startIndex.advancedBy(1)..<max.endIndex
        	max = max[range]
        	if comp(rev, max) {
        		return 0
        	} else {
        		return Int("-" + rev)!
        	}
        } else {
        	let rev = String(str.characters.reverse())
        	if comp(rev, String(Int32.max)) {
        		return 0
        	} else {
        		return Int(rev)!
        	}
        }
    }
    func comp(strA: String, _ strB: String) -> Bool {
    	if (strA.characters.count != strB.characters.count) {
    		return strA.characters.count > strB.characters.count
    	}
    	var ida = strA.startIndex
    	var idb = strB.startIndex
    	while ida < strA.endIndex {
    		if strA[ida] != strB[idb] {
    			return strA[ida] > strB[idb]
    		}
    		ida = ida.advancedBy(1)
    		idb = idb.advancedBy(1)
    	}
    	return false
    }
}