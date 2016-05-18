class Solution {
    func countAndSay(n: Int) -> String {
    	var cur = "1"
    	var nxt = ""
    	for _ in 1..<n {
    		var c = cur.characters.first!
    		var nc = 0
    		for char in cur.characters {
    			if char == c {
    				nc++
    			} else {
    				nxt += ("\(nc)" + String(c))
    				c = char
    				nc = 1
    			}
    		}
    		nxt += ("\(nc)" + String(c))
    		cur = nxt
    		nxt = ""
    	}
    	return cur
    }
}