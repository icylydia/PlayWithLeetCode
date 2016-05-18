class Solution {
    func getHint(secret: String, _ guess: String) -> String {
        var bulls = 0
        var s = "", g = ""
        for var idxs = secret.characters.startIndex,
        	idxg = guess.characters.startIndex;
        	idxs < secret.characters.endIndex &&
        	idxg < guess.characters.endIndex;
        	idxs = idxs.advancedBy(1),
        	idxg = idxg.advancedBy(1) {
        	if secret.characters[idxs] == guess.characters[idxg] {
        		bulls++
        	} else {
        		s += String(secret.characters[idxs])
        		g += String(guess.characters[idxg])
        	}
        }
        var ds = Dictionary<Character, Int>()
        for c in s.characters {
        	if let _ = ds[c] {
        		ds[c] = ds[c]! + 1
        	} else {
        		ds[c] = 1
        	}
        }
        var cows = 0
        for c in g.characters {
        	if let n = ds[c] where n > 0 {
        		cows++
        		ds[c] = ds[c]! - 1
        	}
        }
        return "\(bulls)A\(cows)B"
    }
}