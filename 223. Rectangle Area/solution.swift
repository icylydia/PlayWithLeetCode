class Solution {
    func computeArea(A: Int, _ B: Int, _ C: Int, _ D: Int, _ E: Int, _ F: Int, _ G: Int, _ H: Int) -> Int {
        return (C-A) * (D-B) + (G-E) * (H-F) - coveredBoth(A, C, E, G) * coveredBoth(B, D, F, H)
    }
    func coveredBoth(f1: Int, _ t1: Int, _ f2: Int, _ t2: Int) -> Int {
    	if f1 >= t2 || f2 >= t1 {
    		return 0
    	} else if ((f1 > f2) == (t1 < t2)) {
    		return min(t1 - f1, t2 - f2)
    	} else {
    		return min(t2 - f1, t1 - f2)
    	}
    }
}