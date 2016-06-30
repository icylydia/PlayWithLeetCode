class Solution {
    func getSum(a: Int, _ b: Int) -> Int {
        var ans = Int32(0)
        var a = a
        var b = b
        var carry = false
        for idx in 0..<32 {
            let ta = (a & 1) == 1
            let tb = (b & 1) == 1
            a >>= 1
            b >>= 1
            ans |= (((ta != tb) != carry) ? Int32(1) : Int32(0)) << Int32(idx)
            carry = (ta && tb) || (carry && (ta || tb))
        }
        return Int(ans)
    }
}
