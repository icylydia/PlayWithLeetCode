class Solution {
    func canWinNim(n: Int) -> Bool {
        return (n & 0b11) != 0
    }
}