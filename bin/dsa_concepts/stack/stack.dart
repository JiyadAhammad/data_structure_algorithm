/*
  1. Implement a Stack (Using Array or List) ✅
  2. Push and Pop Operations ✅
  3. Peek the Top Element ✅
  4. Find the Size of the Stack ✅
  5. Reverse a String Using Stack ✅
  6. Check for Balanced Parentheses ✅
  7. Reverse a Stack ✅
  8. Evaluate a Postfix Expression
  9. Convert Infix to Postfix
  10. Sort a Stack Using Another Stack
  11. Implement Stack Using Two Queues
  12. Next Greater Element
  13. Design a Min Stack
*/

/*
Stack Last in First out -> Lifo
element added last get out first
*/

List<int> stack = [];

//! 1. Implement a Stack (Using Array or List)
void stackImplementation(List<int> values) {
  // Push new element to last
  for (var i = 0; i < values.length; i++) {
    stack.add(values[i]);
  }

  // Pop last element from the list
  stack.removeLast();

  // Peek element in stack
  stack.last;
}

//! 2. Push and Pop Operations
void pushOperation(int val) {
  stack.add(val);
}

void popOperation() {
  stack.removeLast();
}

//! 3. Peek the Top Element
void peekTopElement() {
  stack.last;
}

//! 4. Find the Size of the Stack
void lengthStack() {
  int len = 0;

  for (var i = 0; i < stack.length; i++) {
    len++;
  }

  print('Length of stack = $len');
}

//! 5. Reverse a String Using Stack
void reverseString(String val) {
  List<String> stack = [];
  String newString = '';
  for (var i = 0; i < val.length; i++) {
    stack.add(val[i]);
  }

  while (stack.isNotEmpty) {
    newString += stack.removeLast();
  }

  print(newString);
}

//! 6. Check for Balanced Parentheses
void balancedParanthisis(String s) {
  /*
    Input 1:
    ({[]})
    Output:
    Balanced

    Input 2:
    ({[)]}
    Output:
    Not Balanced
  */

  if (s.isEmpty) {
    // No values received
    return;
  }

  List<String> paranthisStack = [];
  for (var i = 0; i < s.length; i++) {
    if (paranthisStack.isEmpty) {
      paranthisStack.add(s[i]);
      continue;
    }

    if (lastPara(s[i], paranthisStack.last)) {
      paranthisStack.removeLast();
    } else {
      paranthisStack.add(s[i]);
    }
  }

  if (paranthisStack.isEmpty) {
    print('Balanced');
  } else {
    print('Not Balanced');
  }

  print('paranthisStack $paranthisStack');

  // Time complexity = O(n)
  // Space complexity = O(n)
}

bool lastPara(String current, String last) {
  switch (current) {
    case ')':
      return last == "(";

    case '}':
      return last == "{";

    case ']':
      return last == "[";
    default:
      return false;
  }
}

//! 7. Reverse a Stack
void reverseStack(List<int> stack) {
  if (stack.isEmpty) {
    return;
  }
  List<int> tempStack = List.from(stack);

  List<int> reverseStack = [];

  while (tempStack.isNotEmpty) {
    reverseStack.add(tempStack.removeLast());
  }
  print('Original stack : $stack');
  print('reversed stack : $reverseStack');

  // Time complexity = O(n)
  // Space complexity = O(n)
}
