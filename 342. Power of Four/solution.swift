class Solution {
    func isPowerOfFour(num: Int) -> Bool {
    	var tailZero = 0
    	var flagOne = false
    	var countOne = 0
    	var i = num
    	while i > 0 {
    		if (i & 1) == 1 {
    			countOne++
    			if !flagOne {
    				flagOne = true
    			}
    		} else if !flagOne {
    			tailZero++
    		}
    		i = i >> 1
    	}
    	return countOne == 1 && tailZero % 2 == 0
    }
}