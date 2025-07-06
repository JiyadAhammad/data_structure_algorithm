// Beginner questions
/*
  1. Reverse a String ✅
  2. Check if a String is a Palindrome ✅
  3. Count Vowels and Consonants ✅
  4. Convert String to Lowercase / Uppercase ✅
  5. Count Number of Words ✅
  6. Remove All Whitespaces ✅
  7. Replace a Character ✅
  8. Find the Frequency of Each Character ✅
  9. Check if Two Strings Are Anagrams
  10. Remove Duplicate Characters
*/

import 'dart:io';
import 'package:collection/collection.dart';

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
void wordCount(String str) {
  if (str.trim().isEmpty) {
    print(0);
    return;
  }
  final updatedWord = str.trim();

  final seperateWords = updatedWord.split(' ');

  final wordsCount = seperateWords.length;
  print(wordsCount);

  // Time Complexity: O(n)
  // Space Complexity: O(n)
}

//! 6. Remove All Whitespaces
void removeAllWhitespaces(String str) {
  final newString = str.replaceAll(' ', '');

  print(newString);

  // Time Complexity: O(n)
  // Space Complexity: O(n)
}

//! 7. Replace a Character
void replaceCharacter1(String str, String replaceString, String newString) {
  final replaceText = str.replaceAll(replaceString, newString);

  print(replaceText);

  // Time Complexity: O(n)
  // Space Complexity: O(n)
}

void replaceCharacter2(String str, String replaceString, String newString) {
  String temp = '';

  for (var i = 0; i < str.length; i++) {
    if (str[i] == replaceString) {
      temp += newString;
      continue;
    }
    temp += str[i];
  }

  print(temp);

  // Time Complexity: O(n2)
  // Space Complexity: O(n)
}

void replaceCharacter3(String str, String replaceString, String newString) {
  StringBuffer temp = StringBuffer();

  for (var i = 0; i < str.length; i++) {
    if (str[i] == replaceString) {
      temp.write(newString);
      continue;
    }
    temp.write(str[i]);
  }

  print(temp);

  // String Buffer reduce complexicty for modify the String

  // Time Complexity: O(n)
  // Space Complexity: O(n)
}

//! 8. Find the Frequency of Each Character
void characterFrequency(String str) {
  print(str);
  Map<String, int> frequencyMap = {};
  for (var i = 0; i < str.length; i++) {
    if (str[i] == ' ') {
      continue;
    }
    if (frequencyMap.containsKey(str[i])) {
      frequencyMap[str[i]] = frequencyMap[str[i]]! + 1;
      continue;
    }
    frequencyMap[str[i]] = 1;
  }

  print(frequencyMap);

  // Time Complexity: O(n)
  // Space Complexity: O(k) k -> is the number of unique element
}

//! 9. Check if Two Strings Are Anagrams
/*
  str1 = "listen"
  str2 = "silent"

  return true 
*/
// Frequency appraoch
void checkAnagram(String str1, String str2) {
  if (str1.length != str2.length) {
    print("Not a anagram");
    return;
  }

  Map<String, int> frequencyMap1 = {};
  Map<String, int> frequencyMap2 = {};

  for (var i = 0; i < str1.length; i++) {
    if (frequencyMap1.containsKey(str1[i])) {
      frequencyMap1[str1[i]] = frequencyMap1[str1[i]]! + 1;
    } else {
      frequencyMap1[str1[i]] = 1;
    }
  }

  for (var i = 0; i < str2.length; i++) {
    if (frequencyMap2.containsKey(str2[i])) {
      frequencyMap2[str2[i]] = frequencyMap2[str2[i]]! + 1;
    } else {
      frequencyMap2[str2[i]] = 1;
    }
  }

  /// MapEquality Comes from Collection package to comapre the value of 2 maps
  if (MapEquality().equals(frequencyMap1, frequencyMap2)) {
    print('Strinds are anagram');
  } else {
    print('Strings are not anagram');
  }

  // Time Complexity: O(n)
  // Space Complexity: O(k)
}

void checkAnagram2(String str1, String str2) {
  if (str1.length != str2.length) {
    print('Not a anagram');
    return;
  }
  Map<String, int> frequencyMap = {};
  for (var i = 0; i < str1.length; i++) {
    if (frequencyMap.containsKey(str1[i])) {
      frequencyMap[str1[i]] = frequencyMap[str1[i]]! + 1;
    } else {
      frequencyMap[str1[i]] = 1;
    }
  }

  for (var i = 0; i < str2.length; i++) {
    if (frequencyMap.containsKey(str2[i])) {
      frequencyMap[str2[i]] = frequencyMap[str2[i]]! - 1;
    } else {
      frequencyMap[str2[i]] = 1;
    }
  }

  print(frequencyMap);

  for (var i in frequencyMap.values) {
    if (i != 0) {
      print('Not anagram strings');
      return;
    }
  }

  // frequencyMap.forEach((key, value) {
  //   print('Execution');
  //   if (value != 0) {
  //     print('Not anagram strings');
  //     return; # return onnly skip current iteration inf foreach
  //   }
  // });

  print('Anagram');
  return;
}
