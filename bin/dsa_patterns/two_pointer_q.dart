/*
  Given a sorted array, check if there exists a pair with sum = X.
  arr = [1, 2, 3, 4, 6]
  X = 6
*/

void pairSumExist(List<int> arr, int x) {
  final n = arr.length;
  int start = 0;
  int end = n - 1;

  while (start < end) {
    final sum = arr[start] + arr[end];
    if (sum == x) {
      print(true);
      print('${arr[start]} ${arr[end]}');
      return;
    }
    if (sum < x) {
      start++;
    } else {
      end--;
    }
  }
  print(false);
  print('-----Code ended-----');

  // Time Complexity = O(n)
  // Space Complexity = O(1)
}

/*
  Given a sorted array, remove duplicates in-place and return the new length.
  [1,1,2,2,3]
*/

void removeDuplicateInPlace(List<int> arr) {
  int n = arr.length;

  int start = 0;

  for (var i = 1; i < n; i++) {
    if (arr[i] != arr[start]) {
      start++;
      arr[start] = arr[i];
    }
  }
  arr.length = start + 1;
  print(start + 1);
  print(arr);
  print('count = ${arr.length}');

  print('-----Code ended-----');

  // Time Complexity = O(n)
  // Space Complexity = O(1)
}
