import functools
class Codec:
    db = []

    def encode(self, longUrl):
        """Encodes a URL to a shortened URL.
        
        :type longUrl: str
        :rtype: str
        """
        length = len(self.db)
        self.db.append(longUrl)
        return self.conversionA(length)

    def decode(self, shortUrl):
        """Decodes a shortened URL to its original URL.
        
        :type shortUrl: str
        :rtype: str
        """
        return self.conversionC(shortUrl)
    
    def conversionA(self, s):
        b0 = s % 62
        s = int(s / 62)
        b1 = s % 62
        s = int(s / 62)
        b2 = s % 62
        s = int(s / 62)
        b3 = s % 62
        s = int(s / 62)
        b4 = s % 62
        s = int(s / 62)
        b5 = s % 62
        return self.conversionB(b5) + self.conversionB(b4) + self.conversionB(b3) + self.conversionB(b2) + self.conversionB(b1) + self.conversionB(b0)
        
    def conversionB(self, b):
        if b < 10:
            return chr(48 + b)
        if b < 36:
            return chr(65 + b - 10)
        return chr(97 + b - 36)
    
    def conversionC(self, c):
        array = list(map(lambda x: self.conversionD(x), list(c)))
        from functools import reduce
        index = functools.reduce(lambda x , y: x * 62 + y, array, 0)
        return self.db[index]
    
    def conversionD(self, d):
        c = ord(d)
        if c < 58:
            return c - 48
        if c <= ord('Z'):
            return c + 10 - 65
        return c + 36 - 97
        

# Your Codec object will be instantiated and called as such:
# codec = Codec()
# codec.decode(codec.encode(url))