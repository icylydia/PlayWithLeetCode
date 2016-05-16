class Solution {
    func isUgly(num: Int) -> Bool {
        if num < 1 {
            return false
        }
        var mod = num
        while mod > 1 && (mod & 1) == 0 {
        	mod = mod >> 1
        }
        while (mod % 3) == 0 {
        	mod/=3
        }
        while (mod % 5) == 0 {
        	mod/=5
        }
        return mod == 1
    }
}