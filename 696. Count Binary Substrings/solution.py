class Solution:
    def countBinarySubstrings(self, s):
        """
        :type s: str
        :rtype: int
        """
        if len(s) == 0:
            return 1
        if len(s) == 1:
            return 0
        slicerA = []
        for i in range(1, len(s)):
            if s[i] != s[i-1]:
                slicerA.append(i)
        slicerA.append(len(s))
        slicerB = []
        slicerB.append(slicerA[0])
        if len(slicerA) > 1:
            for i in range(1, len(slicerA)):
                slicerB.append(slicerA[i] - slicerA[i-1])
        helper = 0
        if len(slicerB) == 1:
            return 0
        for i in range(1, len(slicerB)):
            x = min(slicerB[i], slicerB[i-1])
            helper += x
        return helper