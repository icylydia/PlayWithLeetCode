class Solution(object):
    def countSubstrings(self, s):
        """
        :type s: str
        :rtype: int
        """
        singleCount = 0
        for i in range(0, len(s)):
            k = 1
            count = 1
            while i - k >= 0 and i + k < len(s):
                if s[i - k] == s[i + k]:
                    count += 1
                else:
                    break
                k += 1
            singleCount += count
        doubleCount = 0
        for i in range(0, len(s) - 1):
            if s[i] == s[i + 1]:
                count = 1
                k = 1
                while i - k >= 0 and i + 1 + k < len(s):
                    if s[i - k] == s[i + 1 + k]:
                        count += 1
                    else:
                        break
                    k += 1
                doubleCount += count
        return singleCount + doubleCount