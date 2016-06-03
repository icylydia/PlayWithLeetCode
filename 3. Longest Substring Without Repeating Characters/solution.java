public class Solution {
    public int lengthOfLongestSubstring(String s) {
    	if(s.length() <= 1) {
    		return s.length();
    	}
    	int maxLen = 1;
    	int idx, idy;
    	int lastHit = -1;
    	for(idx = 0; idx < s.length() - 1; idx++) {
    		if(idx <= lastHit) {
    			continue;
    		}
    		Set<Integer> set = new HashSet<Integer>();
    		set.add(Integer.valueOf(s.charAt(idx)));
    		for(idy = idx + 1; idy < s.length(); idy++) {
    			Integer y = Integer.valueOf(s.charAt(idy));
    			if(set.contains(y)) {
					maxLen = Math.max(maxLen, set.size());
					lastHit = s.substring(idx, idy).indexOf(y);
					break;
    			} else {
    				set.add(y);
    			}
    		}
    		if(idy == s.length()) {
    			return Math.max(maxLen, set.size());
    		}
    	}
        return maxLen;
    }
}
