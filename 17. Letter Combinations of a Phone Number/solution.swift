class Solution {
    func letterCombinations(digits: String) -> [String] {
        var mapping: [Character: [Character]] =
        [
            "2": ["a", "b", "c"],
            "3": ["d", "e", "f"],
            "4": ["g", "h", "i"],
            "5": ["j", "k", "l"],
            "6": ["m", "n", "o"],
            "7": ["p", "q", "r", "s"],
            "8": ["t", "u", "v"],
            "9": ["w", "x", "y", "z"],
            "0": [" "],
            "*": ["+"]
        ]
        var ans = [String]()
        for char in digits.characters {
            if ans.count == 0 {
                ans = mapping[char]!.map(){String($0)}
                continue
            }
            var tans = [String]()
            for str in ans {
                for c in mapping[char]! {
                    tans.append(str + String(c))
                }
            }
            ans = tans
        }
        return ans
    }
}