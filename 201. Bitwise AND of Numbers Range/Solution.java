public class Solution {
    public int rangeBitwiseAnd(int m, int n) {
        int lm = (int)(Math.log(m) / Math.log(2));
        int ln = (int)(Math.log(n) / Math.log(2));
        if(lm != ln) {
            return 0;
        }
        int ans = m;
        for(int i = m + 1; i <= n && i > 0; i++) {
            ans = (ans & i);
            if(ans == 0) {
                break;
            }
        }
        return ans;
    }
}
