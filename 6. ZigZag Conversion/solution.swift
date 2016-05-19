class Solution {
    func convert(s: String, _ numRows: Int) -> String {
    	if numRows < 2 {
    		return s
    	}
        var repo = Array<String>()
        for _ in 0..<numRows {
        	repo.append("")
        }
        var odd = true
        var left = numRows
        for char in s.characters {
        	repo[odd ? (numRows - left) : left].append(char)
        	left--
        	if left == 0 {
        		odd = !odd
        		left = odd ? numRows : (numRows - 2)
        	}
        	if left == 0 {
        		odd = !odd
        		left = odd ? numRows : (numRows - 2)
        	}
        }
        return repo.reduce(""){$0 + $1}
    }
}