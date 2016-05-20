public class Solution {
    public int maxProduct(String[] words) {
        
    	Arrays.sort(words, new Comparator<String>() {

			@Override
			public int compare(String o1, String o2) {
				return o2.length() - o1.length();
			}
        	
		});
        
    	List<Integer> eigens = new ArrayList<Integer>();
    	List<Integer> lengths = new ArrayList<Integer>();
    	
    	for(String word: words) {
    		final int len = word.length();
    		lengths.add(len);
    		int eigen = 0;
    		for(int i = 0; i < len; i++ ) {
    			eigen |= (1 << (word.charAt(i) - 'a'));
    		}
    		eigens.add(eigen);
    	}
    	
        int ans = 0;
        for(int i = 0; i < words.length - 1; i++ ) {
        	if(lengths.get(i) * lengths.get(i + 1) <= ans) {
        		break;
        	}
        	for(int j = i; j < words.length; j++ ) {
        		if((eigens.get(i) & eigens.get(j)) == 0 ) {
        			ans = Math.max(ans, lengths.get(i) * lengths.get(j));
        			break;
        		}
        	}
        }
        return ans;
    }
}
