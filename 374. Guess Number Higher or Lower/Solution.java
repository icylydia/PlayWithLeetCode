/* The guess API is defined in the parent class GuessGame.
   @param num, your guess
   @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
      int guess(int num); */

public class Solution extends GuessGame {
    public int guessNumber(int n) {
        int l = 1, h = n, m = 0, am = 0;
        while(l < h) {
            m = l + (h - l) / 2;
			am = guess(m);
			if(am == 1) {
				l = m + 1;
			} else if (am == 0) {
				return m;
			} else {
				h = m - 1;
			}
        }
		return  l;
    }
}