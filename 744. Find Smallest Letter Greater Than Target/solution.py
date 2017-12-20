class Solution:
    def nextGreatestLetter(self, letters, target):
        """
        :type letters: List[str]
        :type target: str
        :rtype: str
        """
        if target < letters[0]:
            return letters[0]
        elif target >= letters[-1]:
            return letters[0]
        else:
            m = 0
            n = len(letters) - 1
            while m < n and letters[m] != letters[n]:
                c = int((m + n) / 2)
                if letters[c] <= target:
                    m = c + 1
                else:
                    n = c
            if letters[m] > target:
                return letters[m]
            else:
                return letters[n + 1]