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

//! 4. Find the Smallest Element
// Iterative
void smallestElement1(List<int> arr) {
  if (arr.isEmpty) {
    return;
  }

  int smallest = arr[0];

  for (var i = 0; i < arr.length; i++) {
    if (arr[i] < smallest) {
      smallest = arr[i];
    }
  }

  print(smallest);

  // Time Complexcity = O(n)
  // Space Complexcity = O(1)
}

// Recursive
int smallestElement2(List<int> arr, int index) {
  if (index == arr.length - 1) {
    return arr[index];
  }
  int smallest = smallestElement2(arr, ++index);
  return arr[index] < smallest ? arr[index] : smallest;

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}

//! 5. Reverse the Array
// Inbuild reverse method
void reverseArray1(List<int> arr) {
  print(arr);
  final reversed = arr.reversed;
  print(reversed);
}

// iterative method
// using copyArray
void reverseArray2(List<int> arr) {
  print(arr);
  List<int> copyArray = [];

  for (int i = arr.length - 1; i >= 0; i--) {
    copyArray.add(arr[i]);
  }

  print(copyArray);

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}

// Two pointer approach
void reverseArray3(List<int> arr) {
  print(arr);

  /*
    [10, 2, 13, 4] 4
    it 1,
    start =0
    end = 3
    temp =4;
    a[3] = 10
    a[0] = 4;

    [4,2,13,10]

    it 2,
    start =1
    end = 2
    temp =13;
    a[2] = 2
    a[1] = 13;

    [4,13,2,10]

    it 3,
    start =2
    end = 1
    temp =13;
    a[2] = 2
    a[1] = 13;
  */

  int start = 0;
  int end = arr.length - 1;

  while (start < end) {
    int temp = arr[end];
    arr[end] = arr[start];
    arr[start] = temp;
    ++start;
    --end;
  }

  print(arr);

  // Time Complexcity = O(n)
  // Space Complexcity = O(1)
}

// Recursive
void reverseArray4(List<int> arr) {
  print(arr);
  reverseRecursion(arr, 0, arr.length - 1);

  print(arr);
}

void reverseRecursion(List<int> arr, int start, int end) {
  if (start >= end) return;

  int temp = arr[start];
  arr[start] = arr[end];
  arr[end] = temp;

  reverseRecursion(arr, ++start, --end);

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}

// Using Stack
void reverseArray5(List<int> arr) {
  List<int> stack = [];

  for (var e in arr) {
    stack.add(e);
  }

  print(stack);

  for (var i = 0; i < arr.length; i++) {
    arr[i] = stack.removeLast();
  }

  print(arr);

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}

//! 6. Count Even and Odd Numbers
// Iterative
void countEvenAndOdd1(List<int> arr) {
  int evenCount = 0;
  int oddCount = 0;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] % 2 == 0) {
      ++evenCount;
    } else {
      ++oddCount;
    }
  }

  print('$evenCount  ,  $oddCount');

  // Time Complexcity = O(n)
  // Space Complexcity = O(1)
}

// Recursive
void countEvenAndOdd2(List<int> arr) {
  int index = 0;
  int evenCount = 0;
  int oddCount = 0;
  final res = countEvenAndOddRecursive(arr, index, evenCount, oddCount);

  print(res);

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}

(int, int) countEvenAndOddRecursive(
  List<int> arr,
  int index,
  int evenCount,
  int oddCount,
) {
  if (arr.length == index) {
    return (evenCount, oddCount);
  }

  if (arr[index] % 2 == 0) {
    ++evenCount;
  } else {
    ++oddCount;
  }

  return countEvenAndOddRecursive(arr, ++index, evenCount, oddCount);

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}

//! 7. Copy One Array to Another
void copyArray(List<int> arr) {
  List<int> tempArr = [];

  for (int i = 0; i < arr.length; i++) {
    tempArr.add(arr[i]);
  }

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}

//! 8. Remove Duplicates from Array
// using set
void removeDuplicates1(List<int> arr) {
  final result = arr.toSet();

  print(result);

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}

// using copy array
void removeDuplicates2(List<int> arr) {
  print(arr);
  List<int> tempArr = [];

  for (var i = 0; i < arr.length; i++) {
    if (!tempArr.contains(arr[i])) {
      tempArr.add(arr[i]);
    }
  }

  print(tempArr);

  // Time Complexcity = O(n2)
  // Space Complexcity = O(n)
}

// HashMap
void removeDuplicates3(List<int> arr) {
  Map<int, int> frequencyMap = {};
  for (var i = 0; i < arr.length; i++) {
    if (frequencyMap.containsKey(arr[i])) {
      frequencyMap[arr[i]] = frequencyMap[arr[i]]! + 1;
    } else {
      frequencyMap[arr[i]] = 1;
    }
  }

  final uniqueElement = [];

  frequencyMap.forEach((key, value) {
    uniqueElement.add(key);
  });

  print(uniqueElement);

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}

//! 9. Rotate Array to the Left by One
/*
  input:
  [1, 2, 3, 4, 5]

  Output:
  [2, 3, 4, 5, 1]
*/
// Inbuild Method
void rotateArrayLeft1(List<int> arr) {
  print(arr);
  if (arr.isEmpty) {
    return;
  }
  int temp = arr[0];
  arr.removeAt(0);
  arr.add(temp);
  print(arr);

  // Time Complexcity = O(n)
  // Space Complexcity = O(1)
}

// Iterative
void rotateArrayLeft2(List<int> arr) {
  print(arr);
  if (arr.isEmpty) {
    return;
  }
  int temp = arr[0];
  for (var i = 0; i < arr.length; i++) {
    if (i == arr.length - 1) {
      arr[i] = temp;
      break;
    }
    arr[i] = arr[i + 1];
  }

  print(arr);

  // Time Complexcity = O(n)
  // Space Complexcity = O(1)
}

//! 10. Count Frequency of Each Element
// Iterative
void frequencyCount1(List<int> arr) {
  Map<int, int> frequencyMap = {};
  for (var i = 0; i < arr.length; i++) {
    if (!frequencyMap.containsKey(arr[i])) {
      frequencyMap[arr[i]] = 1;
    } else {
      continue;
    }

    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        frequencyMap[arr[i]] = frequencyMap[arr[i]]! + 1;
      }
    }
  }
  print(frequencyMap);

  // Time Complexcity = O(n2)
  // Space Complexcity = O(n)
}

// hashmap
void frequencyCount2(List<int> arr) {
  Map<int, int> frequencyMap = {};
  for (int i = 0; i < arr.length; i++) {
    if (!frequencyMap.containsKey(arr[i])) {
      frequencyMap[arr[i]] = 1;
    } else {
      frequencyMap[arr[i]] = frequencyMap[arr[i]]! + 1;
    }
  }

  print(frequencyMap);

  // Time Complexcity = O(n)
  // Space Complexcity = O(n)
}
