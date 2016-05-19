class Solution {
    func addBinary(a: String, _ b: String) -> String {
        let x = String(a.characters.reverse())
        let y = String(b.characters.reverse())
        let maxLength = max(x.characters.count, y.characters.count)
        var carry = false
        var sum = false
        var r_ans = ""
        var idx = x.startIndex, idy = y.startIndex
        for _ in 0..<maxLength {
        	sum = carry
        	carry = false
        	if idx < x.endIndex {
        		carry = (sum && (x[idx] == "1"))
        		sum = (sum != (x[idx] == "1"))
        		idx = idx.advancedBy(1)
        	}
        	if idy < y.endIndex {
        		carry = carry || (sum && y[idy] == "1")
        		sum = (sum != (y[idy] == "1"))
        		idy = idy.advancedBy(1)
        	}
        	r_ans += sum ? "1" : "0"
        }
        if carry {
        	r_ans += "1"
        }
        return String(r_ans.characters.reverse())
    }
}