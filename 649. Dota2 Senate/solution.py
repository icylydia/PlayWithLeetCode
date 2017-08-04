class Solution:
    def predictPartyVictory(self, senate):
        """
        :type senate: str
        :rtype: str
        """
        countr = senate.count("R")
        countd = senate.count("D")
        balance = 0
        while countr > 0 and countd > 0:
            des = ""
            for char in senate:
                if char == "R":
                    if balance >= 0:
                        des += "R"
                    balance += 1
                else:
                    if balance <= 0:
                        des += "D"
                    balance -= 1
            senate = des
            countr = senate.count("R")
            countd = senate.count("D")
        if countr > 0:
            return "Radiant" 
        else: 
            return "Dire"