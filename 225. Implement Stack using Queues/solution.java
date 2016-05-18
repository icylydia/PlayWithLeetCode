class MyStack {
    private Queue<Integer> queue = new LinkedList<Integer>();
    private Queue<Integer> bq;
    // Push element x onto stack.
    public void push(int x) {
        bq = new LinkedList<Integer>();
        bq.add(x);
        while(!queue.isEmpty()) {
            bq.add(queue.poll());
        }
        queue = bq;
    }

    // Removes the element on top of the stack.
    public void pop() {
        queue.remove();
    }

    // Get the top element.
    public int top() {
        return queue.peek();
    }

    // Return whether the stack is empty.
    public boolean empty() {
        return queue.isEmpty();
    }
}