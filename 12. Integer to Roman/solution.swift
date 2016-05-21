class Solution {
    func intToRoman(num: Int) -> String {
        var ans = ""
        let bit4 = num / 1000
        for _ in 0..<bit4 {
            ans += "M"
        }
        var temp = num % 1000
        let bit3 = temp / 100
        switch bit3 {
        case 1...3:
            for _ in 0..<bit3 {
                ans += "C"
            }
        case 4:
            ans += "CD"
        case 5...8:
            ans += "D"
            for _ in 0..<(bit3 - 5) {
                ans += "C"
            }
        case 9:
            ans += "CM"
        default:
            break
        }
        temp = temp % 100
        let bit2 = temp / 10
        switch bit2 {
        case 1...3:
            for _ in 0..<bit2 {
                ans += "X"
            }
        case 4:
            ans += "XL"
        case 5...8:
            ans += "L"
            for _ in 0..<(bit2 - 5) {
                ans += "X"
            }
        case 9:
            ans += "XC"
        default:
            break
        }
        temp = temp % 10
        let bit1 = temp
        switch bit1 {
        case 1...3:
            for _ in 0..<bit1 {
                ans += "I"
            }
        case 4:
            ans += "IV"
        case 5...8:
            ans += "V"
            for _ in 0..<(bit1 - 5) {
                ans += "I"
            }
        case 9:
            ans += "IX"
        default:
            break
        }
        return ans
    }
}
