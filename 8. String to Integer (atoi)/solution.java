public class Solution {
	public int myAtoi(String str) {
		final int INT_MAX = 2147483647;
		final int INT_MIN = -2147483648;
		if(!valid(str)) {
			return 0;
		}
		int ans = 0;
		boolean startFlag = false;
		boolean signed = false;
		for(int i = 0; i < str.length(); i++){
			char c = str.charAt(i);
			if(!startFlag) {
				if(c == ' ') {
					continue;
				} else if (c == '+') {
					startFlag = true;
					continue;
				} else if (c == '-') {
					startFlag = true;
					signed = true;
					continue;
				} else if (c <= '9' && c >= '0') {
					startFlag = true;
					i--;
					continue;
				} else {
					return 0;
				}
			} else {
				if(c < '0' || c >'9') {
					break;
				} else {
					if(!signed) {
						if(ans > INT_MAX / 10) {
							return INT_MAX;
						} else if (ans == INT_MAX / 10 && (c - '0') > 7) {
							return INT_MAX;
						} else {
							ans *= 10;
							ans += (c - '0');
						}
					} else {
						if(ans < INT_MIN / 10) {
							return INT_MIN;
						} else if (ans == INT_MIN / 10 && (c - '0') > 8) {
							return INT_MIN;
						} else {
							ans *= 10;
							ans -= (c - '0');
						}
					}
				}
			}
		}
		return ans;
	}
	
	private boolean valid(String str) {
		String trimed = str.trim();
		if(trimed.length() <= 0) {
			return false;
		}
		char first = trimed.charAt(0);
		int st = 0;
		if (first == '+' || first == '-'){
			st = 1;
		} else if (first <= '9' && first >= '0') {
			st = 0;
		} else {
			return false;
		}
		if(trimed.length() <= st) {
			return false;
		}
		char c = trimed.charAt(st);
		return c >= '0' && c <= '9';
	}
}
