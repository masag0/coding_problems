/*
Detect a cycle in a linked list. Note that the head pointer may be 'null' if the list is empty.

A Node is defined as:
    class Node {
        int data;
        Node next;
    }
*/

boolean hasCycle(Node head) {
    if (head == null) {
        return false;
    }
    Node curr = head.next;
    HashMap<Node, Boolean> hash = new HashMap<>();
    while (curr != null) {
        if (hash.containsKey(curr)) {
            return true;
        }
        hash.put(curr, true);
        curr = curr.next;
    }
    return false;
}
