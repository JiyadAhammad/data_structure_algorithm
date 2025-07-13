/*
  1. Traverse a Linked List ✅
  2. Insert a Node at the Beginning ✅
  3. Insert a Node at the End ✅
  4. Insert a Node at a Specific Position ✅
  5. Delete a Node by Value
  6. Delete a Node at a Specific Position
  7. Search for an Element in the Linked List
  8. Reverse a Linked List
  9. Find the Length of the Linked List
  10. Find the Middle Element
  11. Detect a Loop in the Linked List
  12. Check if the Linked List is a Palindrome
  13. Find The Lowest Value in a Linked List
*/

// Learning section
/*
  Not in contidious location
  Data and node to link to the next element
  head = Start node , tail = last node
*/

import 'dart:io';

class Node {
  final int data;
  Node? next;

  Node({required this.data, this.next});
}

// 10 ->
void createLinkedList() {
  final node = LinkedList();

  // Create Linked list
  node.addData(20);
  node.addData(30);
  node.addData(40);
  // Insert at begining
  node.insertAtBeginning(10);
  // Insert at the end
  node.insertAtEnd1(50);
  node.insertAtEnd2(60);
  // Insert at middle
  node.insertAtMiddle(25, 10);
  // Travel of Linked list
  node.traverseLinkedList();
}

class LinkedList {
  Node? head;
  Node? tail;

  void addData(int data) {
    Node newNode = Node(data: data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  //! 1. Traverse a Linked List
  void traverseLinkedList() {
    Node? current = head;

    while (current != null) {
      stdout.write('${current.data} -> ');
      current = current.next;
    }
    stdout.write('null');

    // Time Complexcity = O(n)
    // Space Complexcity = O(1)
  }

  //! 2. Insert a Node at the Beginning
  void insertAtBeginning(int data) {
    Node newNode = Node(data: data);
    newNode.next = head;
    if (head == null) {
      tail = head = newNode;
    } else {
      head = newNode;
    }
    // Time Complexcity = O(1)
    // Space Complexcity = O(1)
  }

  //! 3. Insert a Node at the End
  // Keep tail to add new data
  void insertAtEnd1(int data) {
    Node newNode = Node(data: data);
    // 10 -> 20 -> 30 -> 40 -> null
    if (head == null) {
      head = tail = newNode;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
    // Time Complexcity = O(1)
    // Space Complexcity = O(1)
  }

  // if not keeping tail
  void insertAtEnd2(int data) {
    Node newNode = Node(data: data);
    if (head == null) {
      head = newNode;
      return;
    }
    Node? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newNode;

    // Time Complexcity = O(n)
    // Space Complexcity = O(1)
  }

  //! 4. Insert a Node at a Specific Position
  void insertAtMiddle(int data, int index) {
    // 10 -> 20 -> {25} -> 30 -> 40 -> null
    Node newNode = Node(data: data);
    if (head == null) {
      tail = head = newNode;
    } else {
      Node? current = head;
      int count = 0;
      while (current?.next != null) {
        ++count;
        if (count == index) {
          break;
        }
        current = current?.next;
      }

      // If index is out of bounds
      if (current == null) {
        print("Index out of range");
        return;
      }
      newNode.next = current.next;
      current.next = newNode;
    }
  }
}






/*
class Node {
  final int data;
  Node? next;

  Node({required this.data, this.next});
}

//! 1. Traverse a Linked List
/*
  10 -> 20 -> 30 -> 40 -> null
*/
void traverseLinkedList(Node? head) {
  final newNode = insertAtBeginning(5, head);
  // final lastNode = insertAtEnd(50, head);

  Node? current = newNode;
  while (current != null) {
    // stdout.write('${current.data} -> ');
    current = current.next;
  }
  final lastNode = Node(data: 50);
  if (current == null) {
    current = newNode;
    current!.next = null;
  } else {
    current.next = lastNode;
    lastNode.next = null;
  }

  stdout.write('Null');
}

//! 2. Insert a Node at the Beginning
/*
 add 5 ->
  10 -> 20 -> 30 -> 40 -> null
*/
Node? insertAtBeginning(int data, Node? head) {
  Node? current = head;
  Node? newNode;

  if (current == null) {
    newNode = Node(data: data);
  } else {
    newNode = Node(data: data);
    newNode.next = current;
  }

  return newNode;
}

//! 3. Insert a Node at the End
/*
  add 50 
  10 -> 20 -> 30 -> 40 -> newNode -> null
*/
Node? insertAtEnd(int data, Node? head) {
  Node? current = head;

  Node? newNode;

  if (current == null) {
    newNode = Node(data: data);
    current?.next = newNode;
    newNode.next = null;
  }

  return newNode;
}
*/