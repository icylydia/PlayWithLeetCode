class Solution {
    func productExceptSelf(nums: [Int]) -> [Int] {
        let countZero = nums.filter{$0==0}.count
        if countZero > 1 {
            return [Int](count:nums.count, repeatedValue: 0)
        } else if countZero == 1 {
            let product = nums.filter{ $0 != 0 }.reduce(1){ $0 * $1 }
            return nums.map{ $0 == 0 ? product : 0}
        } else {
            let product = nums.reduce(1){ $0 * $1 }
            return nums.map{ product / $0 } 
        }
    }
}
