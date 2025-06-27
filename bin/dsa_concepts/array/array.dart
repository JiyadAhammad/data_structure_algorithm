// Beginner questions
/*
  1. Print Elements of an Array
  2. Find the Sum of All Elements
  3. Find the Largest Element
  4. Find the Smallest Element
  5. Reverse the Array
  6. Count Even and Odd Numbers
  7. Copy One Array to Another
  8. Remove Duplicates from Array
  9. Rotate Array to the Left by One
  10. Count Frequency of Each Element
*/

import 'dart:io';

//! 1. Print Elements of an Array

void printElements(List<dynamic> arr) {
  for (var i = 0; i < arr.length; i++) {
    stdout.write(arr[i]);
  }
}

//! 2. Find the Sum of All Elements
// Iterative appraoch
void sumOfElements1(List<int> arr) {
  int sum = 0;
  for (var i = 0; i < arr.length; i++) {
    sum = sum + arr[i];
  }
  print(sum);

  // Time Complexcity = O(n)
  // Space Complexcity = O(1)
}

// Base maths formula (Only for 1..n)
void sumOfElements2(List<int> arr) {
  int len = arr.length;

  int sum = len * (len + 1) ~/ 2;
  print(sum);

  // Time Complexcity = O(1)
  // Space Complexcity = O(1)
}

// Recursive
int sumOfElements3(List<int> arr, int index) {
  if (index >= arr.length) {
    return 0;
  }
  return arr[index] + sumOfElements3(arr, ++index);

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}

//! 3. Find the Largest Element
// Iterative
void largesElement1(List<int> arr) {
  if (arr.isEmpty) {
    return;
  }
  int largesElement = arr[0];
  for (var i = 1; i < arr.length; i++) {
    if (arr[i] > largesElement) {
      largesElement = arr[i];
    }
  }
  print(largesElement);

  // Time Complexcity = O(n)
  // Space Complexcity = O(1)
}

// Recursive
int largesElement2(List<int> arr, int index) {
  if (index == arr.length - 1) {
    return 0;
  }
  int largesElement = largesElement2(arr, ++index);
  return arr[index] > largesElement ? arr[index] : largesElement;

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}
