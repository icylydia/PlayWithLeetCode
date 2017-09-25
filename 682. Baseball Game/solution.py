from functools import reduce 
class Solution:
    def calPoints(self, ops):
        """
        :type ops: List[str]
        :rtype: int
        """
        cola = []
        for s in ops:
            if s == '+':
                nxt = cola[-1] + cola[-2]
                cola.append(nxt)
            elif s == 'D':
                nxt = 2 * cola[-1]
                cola.append(nxt)
            elif s == 'C':
                cola = list(cola[0:-1])
            else:
                cola.append(int(s))
        return reduce(lambda x,y: x + y, cola, 0)