class Solution {
    func combinationSum(candidates: [Int], _ target: Int) -> [[Int]] {
        var ans = [[Int]]()
        let count = candidates.count
        for i in 0..<count {
            let candidate = candidates[i]
            if target == candidate {
                ans.append([candidate])
            } else if target > candidate {
                var ac = combinationSum(Array(candidates[i..<count]), target - candidate)
                var bac = ac.filter{$0.count > 0}
                            .map{[candidate] + $0}
                ans += bac
            }
        }
        return ans
    }
}