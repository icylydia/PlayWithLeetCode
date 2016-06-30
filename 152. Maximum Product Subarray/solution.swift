class Solution {
    func maxProduct(nums: [Int]) -> Int {
        var workGroups = [[Int]]()
        var split = [Int]()
        var zeroFlg = false
        for num in nums {
            if num == 0 {
                zeroFlg = true
                if split.count > 0 {
                    workGroups.append(split)
                    split = [Int]()
                }
            } else {
                split.append(num)
            }
        }
        if split.count > 0 {
            workGroups.append(split)
        }
        if workGroups.count == 0 {
            return 0
        }
        if nums.count == 1 && nums[0] < 0 {
            return nums[0]
        }
        var positiveGroups = [[Int]]()
        for group in workGroups {
            let countNegatives = group.filter{ $0 < 0 }.count
            if countNegatives % 2 == 0 {
                positiveGroups.append(group)
            } else if countNegatives == 1 {
                var before = [Int]()
                var after = [Int]()
                var flg = true
                for e in group {
                    if flg && e > 0 {
                        before.append(e)
                    } else if flg && e < 0 {
                        flg = false
                    } else {
                        after.append(e)
                    }
                }
                if before.count > 0 {
                    positiveGroups.append(before)
                }
                if after.count > 0 {
                    positiveGroups.append(after)
                }
            } else {
                var before = 1
                var firstNegative = 1
                var mid = 1
                var lastNegative = 1
                var after = 1
                var i = 0
                for i = 0 ; i < group.count ; i++ {
                    if group[i] < 0 {
                        firstNegative = group[i]
                        break
                    } else {
                        before *= group[i]
                    }
                }
                let idxF = i
                for i = 0 ; i < group.count ; i++ {
                    if group[group.count - 1 - i] < 0 {
                        lastNegative = group[group.count - 1 - i]
                        break
                    } else {
                        after *= group[group.count - i - 1]
                    }
                }
                let idxL = group.count - 1 - i
                for i = idxF + 1; i < idxL; i++ {
                    mid *= group[i]
                }
                positiveGroups.append([before, firstNegative, mid])
                positiveGroups.append([mid, lastNegative, after])
            }
        }
        if positiveGroups.count == 0 {
            return 0
        }
        return positiveGroups.map{
            return $0.reduce(1){$0*$1}
            }.maxElement()!
    }
}
