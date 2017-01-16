class Solution {
    func findComplement(_ num: Int) -> Int {
        var flip = ~num
		var index = 63
		while (flip & (1 << index)) != 0 {
			flip &= ~(1 << index)
			index -= 1
		}
		return flip
   }
}