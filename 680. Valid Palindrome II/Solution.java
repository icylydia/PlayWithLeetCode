public class Solution {
    public boolean validPalindrome(String s) {
        String ss = s;
        int len = ss.length();
        int idx = 0;
        while(len - 2 * idx > 1 && ss.charAt(idx) == ss.charAt(len - 1 - idx)) {
            idx += 1;
        }
        if(len - 2 * idx <= 1) {
            return true;
        }

        String sx = ss.substring(idx + 1, len - idx);
        String sy = ss.substring(idx, len - idx - 1);
        int lenx = sx.length();
        int leny = sy.length();
        int idxx = 0;
        int idyx = 0;

        while(lenx - 2 * idxx > 1 && sx.charAt(idxx) == sx.charAt(lenx - 1 - idxx)) {
            idxx += 1;
        }
        if(lenx - 2 * idxx <= 1) {
            return true;
        }
        while(leny - 2 * idyx > 1 && sy.charAt(idyx) == sy.charAt(leny - 1 - idyx)) {
            idyx += 1;
        }
        if(leny - 2 * idyx <= 1) {
            return true;
        }

        return false;
    }
}
