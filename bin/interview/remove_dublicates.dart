/*
  Section 1 – DSA

  Q1. You are given a list of integers, 
  and you need to remove duplicates while preserving order.

  Write a time-efficient solution in Dart and explain the time complexity.
*/

void removeDuplicates(List<int> arr) {
  if (arr.isEmpty) {
    // no element in this array
    return;
  }

  // [1,2,2,3,4,4]
  // [5,2,5,3,2,1]

  // Brute force approach
  for (int i = 0; i < arr.length - 1; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        arr.removeAt(j);
        continue;
      }
    }
  }

  print(arr);

  // TC = O(n2)
  // SC = O(1)
}

void removeDuplicatestT(List<int> arr) {
  if (arr.isEmpty) {
    // no element in this array
    return;
  }

  // [1,2,2,3,4,4]
  // [5,2,5,3,2,1]

  // Using set datastructre
  final newArray = arr.toSet().toList();

  print(newArray);

  // TC = O(n)
  // SC = O(k)
}

void removeDuplicatestT2(List<int> arr) {
  if (arr.isEmpty) {
    // no element in this array
    return;
  }

  // [1,2,2,3,4,4]
  // [5,2,5,3,2,1]

  // Using HashMap
  Map<int, int> freqMap = {};

  for (var i = 0; i < arr.length; i++) {
    if (freqMap.containsKey(arr[i])) {
      freqMap[arr[i]] = freqMap[arr[i]]! + 1;
    } else {
      freqMap[arr[i]] = 1;
    }
  }

  arr.clear();

  freqMap.forEach((key, value) {
    arr.add(key);
  });

  print(arr);

  // TC = O(n)
  // SC = O(k)
}

void removeDuplicatesPreserveOrder(List<int> arr) {
  final seen = <int>{}; // Dart's LinkedHashSet
  final result = <int>[];

  for (final num in arr) {
    if (seen.add(num)) {
      result.add(num);
    }
  }

  print(result);
}
