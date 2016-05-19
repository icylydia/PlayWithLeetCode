class Solution {
	var primes = [2]
    func countPrimes(n: Int) -> Int {
        if n <= 2 {
        	return 0
        }
        if n == 3 {
        	return 1
        }
        for var i = 3 ; i < n; i += 2 {
        	isPrime(i)
        }
        return primes.count
    }
    func isPrime(n: Int) -> Bool {
    	for i in 0..<primes.count {
    		if n % primes[i] == 0 {
    			return false
    		}
    		if n < primes[i] * primes[i] {
    			primes.append(n)
    			break
    		}
    	}
    	return true
    }
}