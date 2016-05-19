class Solution {
    func longestCommonPrefix(strs: [String]) -> String {
    	if strs.count == 0 {
    		return ""
    	}
        let minLength = strs.map{$0.characters.count}.reduce(Int.max) {
            min($0,$1)
        }
        var ans = ""
        for i in 0..<minLength {
        	var common = true
        	let first = strs.first!
        	let char = first.characters[first.startIndex.advancedBy(i)]
        	for j in 1..<strs.count {
        		let current = strs[j]
        		if char != current.characters[current.startIndex.advancedBy(i)] {
        			common = false
        			break
        		}
        	}
        	if !common {
        		break
        	} else {
        		ans += String(char)
        	}
        }
        return ans
    }
}