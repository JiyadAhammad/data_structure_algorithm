/*
    Given an integer array nums, 
    rotate the array to the right by k steps, where k is non-negative.

    Example 1:
    Input: nums = [1,2,3,4,5,6,7], k = 3
    Output: [5,6,7,1,2,3,4]
    Explanation:
    rotate 1 steps to the right: [7,1,2,3,4,5,6]
    rotate 2 steps to the right: [6,7,1,2,3,4,5]
    rotate 3 steps to the right: [5,6,7,1,2,3,4]
    Example 2:

    Input: nums = [-1,-100,3,99], k = 2
    Output: [3,99,-1,-100]
    Explanation: 
    rotate 1 steps to the right: [99,-1,-100,3]
    rotate 2 steps to the right: [3,99,-1,-100]
*/

// right rotate:
void rotateKElement(List<int> arr, int k) {
  if (arr.isEmpty) {
    return;
  }
  for (var j = 0; j < k; j++) {
    int temp = arr[arr.length - 1];
    for (int i = arr.length - 1; i > 0; i--) {
      arr[i] = arr[i - 1];
    }
    arr[0] = temp;
  }
  print(arr);

  // Time complexity = O(n2)
  // Space complexity = O(1)
}

void rotateKElement1(List<int> arr, int k) {
  int totalRotation = k % arr.length;

  List<int> temp = [];

  for (var i = arr.length - totalRotation; i < arr.length; i++) {
    temp.add(arr[i]);
  }

  for (var i = arr.length - totalRotation - 1; i >= 0; i--) {
    arr[i + totalRotation] = arr[i];
  }

  for (var i = 0; i < temp.length; i++) {
    arr[i] = temp[i];
  }

  print(arr);

  // Time complexity = O(n)
  // Space complexity = O(k)
}

void rotateKElement2(List<int> arr, int k) {
  if (arr.isEmpty) {
    return;
  }

  int totalRotation = k % arr.length;

  if (totalRotation == 0) {
    return;
  }
  // Reverse whole array
  rotateHelper(arr, 0, arr.length - 1);

  // Reverse first k element
  rotateHelper(arr, 0, totalRotation - 1);

  // Reverse Remaining element
  rotateHelper(arr, totalRotation, arr.length - 1);
}

void rotateHelper(List<int> arr, int start, int end) {
  while (start < end) {
    int temp = arr[start];
    arr[start] = arr[end];
    arr[end] = temp;
    start++;
    end--;
  }
}
