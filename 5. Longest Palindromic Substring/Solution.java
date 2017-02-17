public class Solution {
	private String s;
    public String longestPalindrome(String s) {
        this.s = s;
		int maxPalindromeLength = 0;
		int maxPalindromeStart = 0;

		int length = s.length();
		for(int start = 0 ; start < length ; start++ ) {
			if(length - start <= maxPalindromeLength) {
				break;
			}
			for(int end = length - 1 ; end >= start ; end --) {
				if(end - start + 1 <= maxPalindromeLength) {
					break;
				}
				if(isPalindrome(start, end)) {
					if(end - start + 1 > maxPalindromeLength) {
						maxPalindromeLength = end - start + 1;
						maxPalindromeStart = start;
					}
				}
			}
		}
		
		return s.substring(maxPalindromeStart, maxPalindromeStart + maxPalindromeLength);
    }
	private boolean isPalindrome(int idx, int idy) {
		int halfCount = (idy - idx + 1) / 2;
		for(int i = 0 ; i < halfCount ; i++ ) {
			if(s.charAt(idx + i) != s.charAt(idy - i)) {
				return false;
			}
		}
		return true; 
	}
}