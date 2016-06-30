class Solution {
    func countNumbersWithUniqueDigits(n: Int) -> Int {
        if n == 0 {
            return 1
        }
        if n == 1 {
            return 10
        }
        var helper = [10, 9*9]
        for var i = 3; i <= min(n, 10) ; i++ {
            let x = helper.last! * (11 - i)
            helper.append(x)
        }
        return helper.reduce(0,combine: +)
    }
}