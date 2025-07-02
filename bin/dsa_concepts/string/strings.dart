// Beginner questions
/*
  1. Reverse a String ✅
  2. Check if a String is a Palindrome ✅
  3. Count Vowels and Consonants ✅
  4. Convert String to Lowercase / Uppercase ✅
  5. Count Number of Words
  6. Remove All Whitespaces
  7. Replace a Character
  8. Find the Frequency of Each Character
  9. Check if Two Strings Are Anagrams
  10. Remove Duplicate Characters
*/

//! 1. Reverse a String
// Iterative
import 'dart:io';

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

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}

// Iterative
void checkPalindrome2(String str) {
  String temp = '';

  for (var i = str.length - 1; i >= 0; i--) {
    temp += str[i];
  }

  print(temp == str);

  // Time Complexcity = O(n2)
  // Space Complexcity = O(n)
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

  // Time Complexcity = O(n)
  // Space Complexcity = O(1)
}

//! 3. Count Vowels and Consonants
/*
  Input:
  "hello"

  Output:

  Vowels: 2 (e, o)

  Consonants: 3 (h, l, l)
*/
void vowelsConstantsCount(String str) {
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  int totalVowels = 0;
  int totalConstatns = 0;
  for (var i = 0; i < str.length; i++) {
    if (vowels.contains(str[i].toLowerCase())) {
      ++totalVowels;
    } else {
      if (str[i] == ' ') {
        continue;
      }
      ++totalConstatns;
    }
  }

  print('Vowels = $totalVowels , Constants = $totalConstatns');

  // Time Complexcity = O(n)
  // Space Complexcity = O(1)
}

//! 4. Convert String to Lowercase / Uppercase
void convertToCases(String str) {
  print('Enter the which cases (1 -> upper , 2 -> lower)');
  String? input = stdin.readLineSync();
  if (input == '1') {
    str = str.toUpperCase();
    print(str);
  } else if (input == '2') {
    str = str.toLowerCase();
    print(str);
  } else {
    print("Invalid input please enter 1 -> upper , 2 -> lower");
  }

  // Time Complexcity = O(n)
  // Space Complexcity = O(1)
}

//! 5. Count Number of Words
