public class MinStack {
    ArrayList<Integer> elements;

    ArrayList<Integer> mins;

    public MinStack() {
        elements = new ArrayList<Integer>();

        mins = new ArrayList<Integer>();
    }

    public void push(int x) {
        elements.add(x);
        if (mins.size() == 0 || x <= getMin()) {
            mins.add(x);
        }
    }

    public void pop() {
        Integer last = elements.remove(elements.size() - 1);
        if (last == getMin()) {
            mins.remove(mins.size() - 1);
        }
    }

    public int top() {
        return elements.get(elements.size() - 1);
    }

    public int getMin() {
        return mins.get(mins.size() - 1);
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * MinStack obj = new MinStack();
 * obj.push(x);
 * obj.pop();
 * int param_3 = obj.top();
 * int param_4 = obj.getMin();
 */
 