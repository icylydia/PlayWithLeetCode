class Solution {
    func countPrimes(n: Int) -> Int {
        if n <= 2 {
            return 0
        }
        var isPrime = [Bool](count: n, repeatedValue: true)
        var checker = 2
        while checker * checker < n {
            var marker = checker * checker
            while marker < n {
                isPrime[marker] = false
                marker += checker
            }
            repeat {
                checker++
            } while !isPrime[checker]
        }
        return isPrime.reduce(-2) {
            return $1 ? ($0 + 1): $0
        }
    }
}