class Solution {
    func convertToTitle(n: Int) -> String {
    	var ret = ""
    	var m = n - 1
    	while(m >= 0) {
    		ret = String(UnicodeScalar(65 + m % 26)) + ret
    		m = m / 26
    		m = m - 1
    	}
    	return ret
    }
}