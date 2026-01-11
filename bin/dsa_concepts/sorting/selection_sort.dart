// Selection Sort
/*
  selection sort mean take the smallest element and put it into the first position
  Continue till the last

*/

/*
  Example 1:
  Input: N = 6, array[] = {13,46,24,52,20,9}
  Output: 9,13,20,24,46,52
  Explanation: After sorting the array is: 9, 13, 20, 24, 46, 52

  Example 2:
  Input: N=5, array[] = {5,4,3,2,1}
  Output: 1,2,3,4,5
  Explanation: After sorting the array is: 1, 2, 3, 4, 5
*/

void selectionSort(List<int> nums) {
  if (nums.isEmpty) {
    return;
  }
  for (int i = 0; i < nums.length - 1; i++) {
    int minNumberIndex = i;
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[minNumberIndex] > nums[j]) {
        minNumberIndex = j;
      }
    }
    // Only swap if a new minimum was found
    if (minNumberIndex != i) {
      int temp = nums[i];
      nums[i] = nums[minNumberIndex];
      nums[minNumberIndex] = temp;
    }
  }
  print(nums);

  // Time Complexity = O(n2)
  // Space Complexity = O(1)
}
