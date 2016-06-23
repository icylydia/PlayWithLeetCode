public class Solution {
    public int nthUglyNumber(int n) {
    	if(n == 1) {
    		return 1;
    	}
    	MinHeap heap = new MinHeap();
    	heap.push(Long.valueOf(1));
    	for(int i = 1; i < n ; i++){
    		Long top = heap.pop();
    		if(top % 5 == 0) {
    			heap.push(top*5);
    		} else if (top % 3 == 0) {
        		heap.push(top*3);
        		heap.push(top*5);
    		} else {
        		heap.push(top*2);
        		heap.push(top*3);
        		heap.push(top*5);
    		}
    	}
        return heap.top().intValue();
    }
    
    class MinHeap {
    	ArrayList<Long> elements = new ArrayList<Long>();
    	public MinHeap() {
    		elements.add(Long.valueOf(0));
    	}
    	public boolean isEmpty() {
    		return elements.isEmpty();
    	}
    	public Long top() {
    		return elements.get(1);
    	}
    	public Long pop() {
    		if(elements.size() == 2){
    			return elements.remove(1);
    		}
    		Long top = elements.get(1);
    		Long tail = elements.remove(elements.size() -1);
    		elements.set(1, tail);
    		int index = 1;
    		while((2*index+1) < elements.size()) {
    			if(elements.get(2*index) < elements.get(2*index+1)) {
	    			if(tail > elements.get(2*index)){
	    				elements.set(index, elements.get(2*index));
	    				elements.set(2*index, tail);
	    				index = 2*index;
    				} else {
    					break;
    				}
    			} else {
	    			if(tail > elements.get(2*index+1)){
	    				elements.set(index, elements.get(2*index+1));
	    				elements.set(2*index+1, tail);
	    				index = 2*index + 1;
    				} else {
    					break;
    				}
    			}
    		}
    		if(2*index < elements.size() && tail > elements.get(2*index)) {
				elements.set(index, elements.get(2*index));
				elements.set(2*index, tail);
    		}
    		return top;
    	}
    	public void push(Long value) {
    		elements.add(value);
    		int index = elements.size() - 1;
    		while(index > 1) {
    			if(value < elements.get(index / 2)) {
    				elements.set(index, elements.get(index / 2));
    				elements.set(index / 2, value);
    				index /= 2;
    			} else {
    				break;
    			}
    		}
    	}
    }
}
