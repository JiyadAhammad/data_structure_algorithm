/*
  1. Traverse a Linked List ✅
  2. Insert a Node at the Beginning ✅
  3. Insert a Node at the End ✅
  4. Insert a Node at a Specific Position ✅
  5. Delete a Node by Value ✅
  6. Delete a Node at a Specific Position ✅
  7. Search for an Element in the Linked List ✅
  8. Reverse a Linked List ✅
  9. Find the Length of the Linked List ✅
  10. Find the Middle Element ✅
  11. Detect a Loop in the Linked List ✅ find start node ✅ Remove cycle ✅
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
  // node.addData(30);
  // Insert at begining
  node.insertAtBeginning(10);
  // Insert at the end
  node.insertAtEnd1(20);
  node.insertAtEnd2(10);
  // Insert at middle
  node.traverseLinkedList();
  node.checkPalindrome2();

  node.traverseLinkedList();

  // node.deleteNodeByValue(40);
  // node.middleElement2(); // Travel of Linked list

  // node.traverseLinkedList();
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
    print('');
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
  void insertAtMiddle1(int data, int index) {
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

  void insertAtMiddle2(int data, int index) {
    if (index < 0) {
      // no range , invalid index
      print('Invalid range entered');
      return;
    }
    if (index == 0) {
      // Implement pushFront here
      return;
    }

    Node? current = head;
    for (int i = 0; i < index - 1; i++) {
      current = current?.next;
    }

    if (current?.next == null) {
      print('out of bound');

      // we can impment a pushBack case here
      return;
    }
    Node newNode = Node(data: data);

    newNode.next = current!.next;
    current.next = newNode;

    // Time Complexcity = O(n)
    // Space Complexcity = O(1)
  }

  //! 5. Delete a Node by Value
  void deleteNodeByValue(int data) {
    if (head == null) {
      // Linked list is empty
      return;
    }

    if (head!.data == data) {
      // Current node is head then remove it and move to next else null
      head = head!.next;
      return;
    }

    Node? current = head;
    Node? temp;

    while (current != null) {
      if (current.data == data) {
        break;
      }
      temp = current;
      current = current.next;
    }

    if (current == null) {
      // no data found
      print('no data found');
      return;
    }

    temp?.next = temp.next?.next;

    // Time Complexcity = O(n)
    // Space Complexcity = O(1)
  }

  //! 6. Delete a Node at a Specific Position
  void deleteNodeByPosition(int pos) {
    if (head == null) {
      // linked list is empty
      return;
    }
    if (pos < 0) {
      // Invalid position
      return;
    }
    if (pos == 0) {
      // implment popback
      return;
    }

    Node? current = head!;
    for (var i = 0; i < pos - 1; i++) {
      if (current == null) {
        break;
      }
      current = current.next;
    }

    if (current == null) {
      // out of bound
      return;
    }

    current.next = current.next?.next;

    // Time Complexcity = O(n)
    // Space Complexcity = O(1)
  }

  //! 7. Search for an Element in the Linked List
  void searchElement(int data) {
    if (head == null) {
      // linked list empty
      return;
    }

    Node? current = head;
    int pos = 0;
    while (current != null) {
      if (current.data == data) {
        print('$data. found at $pos');
        return;
      }
      pos++;
      current = current.next;
    }

    // Time complexcity 0(n)
    // Space complexcity 0(1)
  }

  //! 8. Reverse a Linked List
  void reverseLinkedList() {
    if (head == null) {
      // linked list empty
      return;
    }

    Node? prev;
    Node? current = head;
    Node? next;

    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;

    // Time complexcity 0(n)
    // Space complexcity 0(1)
  }

  //! 9. Find the Length of the Linked List
  void lengthLinkedList() {
    int pos = 0;
    Node? current = head;

    while (current != null) {
      pos++;
      current = current.next;
    }
    print('length of linked list = $pos');

    // Time complexcity 0(n)
    // Space complexcity 0(1)
  }

  //! Find the Middle Element
  void middleElement1() {
    int pos = 0;

    Node? current = head;

    while (current != null) {
      pos++;
      current = current.next;
    }

    int middle = pos ~/ 2;
    current = head;
    for (var i = 0; i < middle; i++) {
      current = current!.next;
    }

    print('Middle is ${current!.data}');

    // Time complexcity 0(2n)
    // Space complexcity 0(1)
  }

  // Slow-Fast Appraoch // Two pointer
  void middleElement2() {
    Node? slow = head;
    Node? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }

    print('Middle is ${slow!.data}');
    // Time complexcity 0(n)
    // Space complexcity 0(1)
  }

  //! 11. Detect a Loop in the Linked List
  //slow-fast appraoch
  void detectCycle() {
    // 1-> 2-> 3-> 4-> 5-> 3-> 4-> ...
    Node? slow = head;
    Node? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;

      if (slow == fast) {
        print('Cycle detected');
        return;
      }
    }

    print('No cycle detected');

    // Time complexcity 0(n)
    // Space complexcity 0(1)
  }

  // Start node of a cycle
  void findStartNode() {
    Node? slow = head;
    Node? fast = head;
    bool isCycle = false;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;

      if (slow == fast) {
        isCycle = true;
        break;
      }
    }

    if (!isCycle) {
      // there is no cycle
      return;
    }

    slow = head;
    while (slow != fast) {
      slow = slow!.next;
      fast = fast!.next;
    }

    print('${slow!.data} is the start of cycle');

    // Time complexcity 0(2n)
    // Space complexcity 0(1)
  }

  // Remove cycle
  void removeCycle() {
    Node? slow = head;
    Node? fast = head;
    bool isCycle = false;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
      if (slow == fast) {
        isCycle = true;
        break;
      }
    }

    if (!isCycle) {
      // NO cycle found
      return;
    }

    slow = head;
    Node? prev;

    while (slow != fast) {
      slow = slow!.next;
      prev = fast;
      fast = fast!.next;
    }

    print('${prev!.data} last node');

    prev = null;

    // Time complexcity 0(2n)
    // Space complexcity 0(1)
  }

  //! 12. Check if the Linked List is a Palindrome
  void checkPalindrome() {
    List<int> stack = [];

    Node? current = head;

    while (current != null) {
      stack.add(current.data);
      current = current.next;
    }

    current = head;

    while (current != null) {
      if (current.data != stack.last) {
        print('Not a palindrom');
        return;
      }

      current = current.next;
      stack.removeLast();
    }

    print('Palindrome');

    // Time complexcity 0(2n)
    // Space complexcity 0(n) -> took a new list of stack
  }

  // implementing without extra space
  void checkPalindrome2() {
    /// Two pointer appraoch
    // 1. find the middle
    // 2. reverse the second half
    // 3. compare with first and second half
    // 4. rereverse once opration done
    // 5. return true or false based on match

    Node? slow = head;
    Node? fast = head;

    while (fast!.next != null && fast.next!.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }

    Node? next;
    Node? currentHead = slow!.next;
    Node? prev;
    slow.next = null;

    while (currentHead != null) {
      next = currentHead.next;
      currentHead.next = prev;

      prev = currentHead;
      currentHead = next;
    }

    slow.next = prev;
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