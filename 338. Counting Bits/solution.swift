class Solution {
    func countBits(num: Int) -> [Int] {
        var ret = Array<Int>()
        ret += [0]
        if(num == 0) {
        	return ret
        }
        var last2n = 1
        var index = 1
        for i in 1...num {
        	if(last2n == index) {
        		last2n = i
        		index = 1
        		ret += [1]
        	} else {
        		ret += [1 + ret[index]]
        		index++
        	}
        }
        return ret
    }
}