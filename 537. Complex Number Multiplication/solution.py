class Solution(object):
    def complexNumberMultiply(self, a, b):
        """
        :type a: str
        :type b: str
        :rtype: str
        """
        plusa = a.find('+')
        ia = a.find('i')
        a1 = int(a[0: plusa])
        a2 = int(a[plusa + 1: ia])
        plusb = b.find('+')
        ib = b.find('i')
        b1 = int(b[0: plusb])
        b2 = int(b[plusb + 1: ib])
        ans1 = a1 * b1 - a2 * b2
        ans2 = a1 * b2 + a2 * b1
        return str(ans1) + '+' + str(ans2) + 'i'
