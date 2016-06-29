class Solution {
    func isPerfectSquare(num: Int) -> Bool {
        var min = 1
        var max = num
        while min != max {
            let mid = (min + max) / 2
            let mid2 = mid * mid
            if mid2 == num {
                return true
            } else if mid2 < num{
                min = mid + 1
            } else {
                max = mid
            }
        }
        return min * max == num
    }
}
