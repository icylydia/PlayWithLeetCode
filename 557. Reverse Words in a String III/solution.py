class Solution(object):
    def reverseWords(self, s):
        """
        :type s: str
        :rtype: str
        """
        words = s.split(' ')
        s = ""
        for word in words:
            drow = word[::-1]
            s += " "
            s += drow
        return s[1:]
