class Solution {
    func compareVersion(version1: String, _ version2: String) -> Int {
        let arrayV1 = version1.characters.split{$0=="."}.map(String.init)
        let arrayV2 = version2.characters.split{$0=="."}.map(String.init)
        let len = max(arrayV1.count, arrayV2.count)
        for i in 0..<len {
            let str1 = i < arrayV1.count ? arrayV1[i] : "0"
            let str2 = i < arrayV2.count ? arrayV2[i] : "0"
            let n1 = Int(str1)!
            let n2 = Int(str2)!
        	if n1 != n2 {
        		return n1 > n2 ? 1 : -1
        	}
        }
        return 0
    }
}