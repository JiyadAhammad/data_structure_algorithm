/*
  Given a string s containing just the characters 
  '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

  An input string is valid if:

  Open brackets must be closed by the same type of brackets.
  Open brackets must be closed in the correct order.
  Every close bracket has a corresponding open bracket of the same type.
  

  Example 1:

  Input: s = "()"

  Output: true

  Example 2:

  Input: s = "()[]{}"

  Output: true

  Example 3:

  Input: s = "(]"

  Output: false

  Example 4:

  Input: s = "([])"

  Output: true

  Example 5:

  Input: s = "([)]"

  Output: false
*/

class Solution {
  bool isValid(String s) {
    if (s.isEmpty) {
      return false;
    }

    List<String> stack = [];

    for (var i = 0; i < s.length; i++) {
      if (stack.isEmpty) {
        stack.add(s[i]);
        continue;
      }

      if (trackLastParenthesis(s[i], stack.last)) {
        stack.removeLast();
      } else {
        stack.add(s[i]);
      }
    }

    return stack.isEmpty;
  }

  bool trackLastParenthesis(String current, String last) {
    switch (current) {
      case ')':
        return last == '(';
      case '}':
        return last == '{';
      case ']':
        return last == '[';
      default:
        return false;
    }
  }
}
