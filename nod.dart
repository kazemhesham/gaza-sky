class Node {
  int data;
  Node? next;

  Node(this.data);
}
// طباعة النود بالعكس
void reversNod(Node? node) {
  if (node == null) return;
  reversNod(node.next);
  print(node.data);
}

// ايجاد النود الوسط
Node? findCenter(Node? head) {
  if (head == null) return null;
  
  Node? slow = head;
  Node? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow?.next;
    fast = fast.next?.next;
  }
  
  return slow;
}


Node? reverseList(Node? head) {
  Node? prev = null;
  Node? current = head;
  Node? next;

  while (current != null) {
    next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  return prev;
}



void main() {
  Node n1 = Node(1);
  Node n2 = Node(2);
  Node n3 = Node(3);
  Node n4 = Node(4);
  Node n5 = Node(5);
  Node n6 = Node(4);
  n1.next = n2;
  n2.next = n3;
  n3.next = n4;
  n4.next = n5;
  n5.next = n6;

  reversNod(n1);
  print('------------');

  Node? middle = findCenter(n1);
  print("Middle is ${middle?.data}");  
  print('------------');

  Node? reversedHead = reverseList(n1);
  while (reversedHead != null) {
    print(reversedHead.data);  
    reversedHead = reversedHead.next;
  }

}
