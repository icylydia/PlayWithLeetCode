class Solution {
    func summaryRanges(nums: [Int]) -> [String] {
        if nums.count == 0 {
            return [String]()
        }
        var ans = [Summary]()
        var start = 0
        var last = nums[0]
        for i in 1..<nums.count {
            if nums[i] != last + 1 {
                let s = Summary(nums[start], nums[i-1])
                ans.append(s)
                start = i
            }
            last = nums[i]
        }
        let s = Summary(nums[start], nums.last!)
        ans.append(s)
        return ans.map{$0.des}
    }
}
class Summary {
    let start: Int
    let end: Int
    init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
    var des: String {
        if start == end {
            return "\(start)"
        } else {
            return "\(start)->\(end)"
        }
    }
}
