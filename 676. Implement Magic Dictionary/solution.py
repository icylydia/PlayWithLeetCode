class MagicDictionary:

    def __init__(self):
        """
        Initialize your data structure here.
        """
        return

    def buildDict(self, dict):
        """
        Build a dictionary through a list of words
        :type dict: List[str]
        :rtype: void
        """
        self.dictSet = {}
        self.lenSet = set()
        for word in dict:
            self.lenSet.add(len(word))
            for idx in range(0, len(word)):
                key = str(word[0:idx] + word[idx + 1:])
                if key in self.dictSet:
                    self.dictSet[key].append((idx, word))
                else:
                    self.dictSet[key] = [(idx,word)]
        print(self.dictSet)
        
    def search(self, word):
        """
        Returns if there is any word in the trie that equals to the given word after modifying exactly one character
        :type word: str
        :rtype: bool
        """
        if len(word) not in self.lenSet:
            return False
        for idx in range(0, len(word)):
            check = str(word[0:idx] + word[idx + 1:])
            if check in self.dictSet:
                for tup in self.dictSet[check]:
                    if idx == tup[0] and word != tup[1]:
                        return True
        return False


# Your MagicDictionary object will be instantiated and called as such:
# obj = MagicDictionary()
# obj.buildDict(dict)
# param_2 = obj.search(word)