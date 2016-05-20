class Solution {
    func rotate(inout nums: [Int], _ k: Int) {
        let kt = k % nums.count
        if kt == 0 {
            return
        }
        var i = 0
        var j = nums.count - 1
        var step = kt
        var swapper = 0
        while i != j {
        	if step * 2 == (j - i + 1) {
        		for p in 0..<step {
        			swapper = nums[p + i]
        			nums[p + i] = nums[step + i + p]
        			nums[step + i + p] = swapper
        		}
        		break
        	}
        	if step * 2 < (j - i + 1) {
        		for p in 0..<step {
        			swapper = nums[p + i]
        			nums[p + i] = nums[j - step + 1 + p]
        			nums[j - step + 1 + p] = swapper
        		}
        		i = step + i
        		continue
        	}
        	if step * 2 > (j - i + 1) {
        		for p in 0..<(j - i + 1 - step) {
        			swapper = nums[p + i]
        			nums[p + i] = nums[i + step + p]
        			nums[i + step + p] = swapper
        		}
        		let len = j - i + 1
        		j = step + i - 1
        		step = step * 2 - len
        		continue
        	}
        }
    }
}