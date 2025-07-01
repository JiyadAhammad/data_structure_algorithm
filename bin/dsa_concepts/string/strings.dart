// Beginner questions

/*
  1. Reverse a String ✅
  2. Check if a String is a Palindrome ✅
  3. Count Vowels and Consonants
  4. Convert String to Lowercase / Uppercase
  5. Count Number of Words
  6. Remove All Whitespaces
  7. Replace a Character
  8. Find the Frequency of Each Character
  9. Check if Two Strings Are Anagrams
  10. Remove Duplicate Characters
*/

//! 1. Reverse a String
// Iterative
void reverseString1(String str) {
  /**
    "hello"
    "olleh"
  */

  String temp = '';

  for (var i = str.length - 1; i >= 0; i--) {
    temp += str[i];
  }

  print(temp);

  // Time Complexcity = O(n2)
  // Space Complexcity = O(n)
}

// Inbuild method
void reverseString2(String str) {
  final result = str.split('').reversed.join('');
  print(result);

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}

//! 2. Check if a String is a Palindrome
// Inbuild method
void checkPalindrome1(String str) {
  final result = str.split('').reversed.join('');
  print(result == str);
}

// Iterative
void checkPalindrome2(String str) {
  String temp = '';

  for (var i = str.length - 1; i >= 0; i--) {
    temp += str[i];
  }
  print('$temp -> $str');
  print(temp == str);
}

// Two Pointer Approach
void checkPalindrome3(String str) {
  int start = 0;
  int end = str.length - 1;

  while (start < end) {
    if (str[start] != str[end]) {
      print('Not a palindrome');
      return;
    }
    ++start;
    --end;
  }

  print('Palindrome');
}
