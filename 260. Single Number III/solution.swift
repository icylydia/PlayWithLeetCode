class Solution {
    func singleNumber(nums: [Int]) -> [Int] {
    	let xor = nums.reduce(0){$0^$1}
    	var diffBit = 1
    	while(diffBit & xor == 0) {
    		diffBit <<= 1
    	}
    	var groupA = Array<Int>()
    	var groupB = Array<Int>()
    	for num in nums {
    		if num & diffBit == 0 {
    			groupA.append(num)
    		} else {
    			groupB.append(num)
    		}
    	}
    	let a = groupA.reduce(0){$0^$1}
    	let b = groupB.reduce(0){$0^$1}
    	return [a, b]
    }
}