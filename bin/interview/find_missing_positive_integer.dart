/*
  Q2. Given an unsorted array of size n, 
  find the first missing positive integer in O(n) time and constant space.

*/

void missingPositiveInteger(List<int> arr) {
  final len = arr.length + 1;
  int sum = 0;
  for (var i = 0; i < arr.length; i++) {
    sum = sum + arr[i];
  }
  final totalSum = (len * (len + 1)) ~/ 2;

  final missing = totalSum - sum;

  print(missing);
}

void missingPositiveIntegert(List<int> arr) {
  int sum = 0;
  int count = 0;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] < 0) {
      count++;
      continue;
    }
    sum = sum + arr[i];
  }
  final len = (arr.length + 1) - count;
  final totalSum = (len * (len + 1)) ~/ 2;
  final missing = totalSum - sum;

  print(missing);
}
