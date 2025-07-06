import 'imports.dart';

void main() {
  // Create nodes
  Node n1 = Node(data: 10);
  Node n2 = Node(data: 20);
  Node n3 = Node(data: 30);
  Node n4 = Node(data: 40);

  // Link nodes together
  n1.next = n2;
  n2.next = n3;
  n3.next = n4;
  traverseLinkedList(n1);
}

void printNewMessage() {
  print('Hello world to dart programming');
}
