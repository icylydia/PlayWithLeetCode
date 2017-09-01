class Solution(object):
    def findLUSlength(self, a, b):
        """
        :type a: str
        :type b: str
        :rtype: int
        """
        lena = len(a)
        lenb = len(b)
        if lena != lenb:
            return max(lena, lenb)
        elif a != b:
            return lena
        else:
            return -1