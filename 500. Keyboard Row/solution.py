class Solution(object):
    def findWords(self, words):
        """
        :type words: List[str]
        :rtype: List[str]
        """
        lines = [["q","w","e","r","t","y","u","i","o","p"],["a","s","d","f","g","h","j","k","l"],["z","x","c","v","b","n","m"]]
        ans = []
        for word in words:
            ww = word.lower()
            single = True
            if len(ww) > 0:
                cc = ww[0]
                k = -1
                if cc in lines[0]:
                    k = 0
                elif cc in lines[1]:
                    k = 1
                else:
                    k = 2
                for c in ww:
                    if c not in lines[k]:
                        single = False
                        break
            if single:
                ans.append(word)
        return ans
