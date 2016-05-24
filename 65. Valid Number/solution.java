public class Solution {
    public boolean isNumber(String s) {
    	String trimmed = s.trim();
    	// standard
    	if(trimmed.matches("^[+|-]?\\d+$")) {
    		return true;
    	}
    	// decimal
    	if(trimmed.matches("^[+|-]?((\\d*\\.\\d+)|(\\d+\\.\\d*))$")) {
    		return true;
    	}
    	// scientific
    	if(trimmed.matches("^[+|-]?(((\\d*\\.\\d+)|(\\d+\\.\\d*))|(\\d+))e[+|-]?\\d+$")) {
    		return true;
    	}
        return false;
    }
}