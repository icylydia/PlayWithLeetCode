class Solution:
    def nextClosestTime(self, time):
        """
        :type time: str
        :rtype: str
        """
        cola = set()
        cola.add(int(time[0]))
        cola.add(int(time[1]))
        cola.add(int(time[3]))
        cola.add(int(time[4]))
        pepsi = sorted(list(cola))
        if len(pepsi) == 1:
            return str(pepsi[0])+str(pepsi[0])+":"+str(pepsi[0])+str(pepsi[0])
        n = len(pepsi)
        minuteCarry = False
        minuteDigitCarry = False
        m = int(time[3])
        n = int(time[4])
        m1 = m
        n1 = n
        if n == pepsi[-1]:
            n1 = pepsi[0]
            minuteDigitCarry = True
        else:
            idx = pepsi.index(n)
            n1 = pepsi[idx + 1]
        if minuteDigitCarry:
            if m == pepsi[-1]:
                m1 = pepsi[0]
                minuteCarry = True
            else:
                idx = pepsi.index(m)
                nxt = pepsi[idx + 1]
                if nxt > 5:
                    m1 = pepsi[0]
                    minuteCarry = True
                else:
                    m1 = nxt
        if not minuteCarry:
            return time[0] + time[1] + time[2] + str(m1) + str(n1)
        hourCarry = False
        hourDigitCarry = False
        a = int(time[0])
        b = int(time[1])
        a1 = a
        b1 = b
        if b == pepsi[-1]:
            b1 = pepsi[0]
            hourDigitCarry = True
        else:
            idx = pepsi.index(b)
            b1 = pepsi[idx + 1]
        if hourDigitCarry:
            if a == pepsi[-1]:
                hourCarry = True
            else:
                idx = pepsi.index(a)
                nxt = pepsi[idx + 1]
                if nxt > 2:
                    minuteCarry = True
                else:
                    a1 = nxt
        if hourCarry or a1 * 10 + b1 > 23:
            return str(pepsi[0])+str(pepsi[0])+":"+str(pepsi[0])+str(pepsi[0])
        else:
            return str(a1) + str(b1) + time[2] + str(m1) + str(n1)