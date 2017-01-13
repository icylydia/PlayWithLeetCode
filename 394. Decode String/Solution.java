public class Solution {
	
    public String decodeString(String s) {
    	if(s.length() == 0) {
    		return "";
    	} else {
    		Char firstChar = new Char(s.charAt(0));
    		if(firstChar.isAlphabetic()) {
    			return String.valueOf(firstChar.getValue()) + decodeString(s.substring(1));
    		} else if(firstChar.getValue() == ']') {
    			return "";
    		} else {
    			// String must be legal, so here have to be a digit
    			NaturalNumber leadingNumber = parseLeadingNaturalNumber(s);
    			StringBuilder str = new StringBuilder();
    			for(int i = 0; i < leadingNumber.getValue(); i++) {
    				str.append(decodeString(s.substring(leadingNumber.getLength() + 1)));
    			}
    			int tokenLength = calTokenLength(s);
    			return str.toString() + decodeString(s.substring(tokenLength));
    		}
    	}
    }
    
    private class Char {
    	private char x;
    	public Char(char x) {
    		this.x = x;
    	}
    	public char getValue() {
    		return x;
    	}
    	public boolean isAlphabetic() {
        	return (x >= 'A' && x <= 'Z') || (x >= 'a' && x <= 'z');
        }
        
    	public boolean isDigit() {
        	return x >= '0' && x <= '9';
        }
    }
    
    private class NaturalNumber {
    	private int n;
    	private int length;
    	public NaturalNumber(int n) {
    		this.n = n;
    		this.length = String.valueOf(n).length();
    	}
    	public int getValue() {
    		return n;
    	}
    	public int getLength() {
    		return length;
    	}
    }
    
    private NaturalNumber parseLeadingNaturalNumber(String s) {
    	int n = 0;
    	int index = 0;
    	Char firstChar = new Char(s.charAt(index));
    	while(firstChar.isDigit()) {
    		n *= 10;
    		n += firstChar.getValue() - '0';
    		index ++;
    		firstChar = new Char(s.charAt(index));
    	}
    	return new NaturalNumber(n);
    }
    
    public int calTokenLength(String s) {
    	int index = 0;
    	while(s.charAt(index) != '[') {
    		index++;
    	}
    	index++;
    	int n = 1;
    	while(n != 0) {
    		if(s.charAt(index) == '[') {
    			n++;
    		} else if(s.charAt(index) == ']') {
    			n--;
    		}
    		index++;
    	}
    	return index;
    }
}