class Solution(object):
    def judgeCircle(self, moves):
        """
        :type moves: str
        :rtype: bool
        """
        u = d = l = r = 0
        for c in moves:
            if c == 'U':
                u += 1
            elif c == 'D':
                d += 1
            elif c == 'L':
                l += 1
            else:
                r += 1
        return u == d and l == r