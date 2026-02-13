/*
Given an integer array nums sorted in non-decreasing order, 
return an array of the squares of each number sorted in non-decreasing order.

Example 1:
Input: nums = [-4,-1,0,3,10]
Output: [0,1,9,16,100]
Explanation: After squaring, the array becomes [16,1,0,9,100].
After sorting, it becomes [0,1,9,16,100].

Example 2:
Input: nums = [-7,-3,2,3,11]
Output: [4,9,9,49,121]
*/

List<int> sortedSquares(List<int> nums) {
  int left =0;
  int right =nums.length-1;
  int index =right;

  List<int> sortedArray =List.filled(index+1, -1);

  while (left<=right) {
    int leftSquare = nums[left]*nums[left];
    int rightSquare = nums[right]*nums[right];

    if (leftSquare>rightSquare) {
      sortedArray[index] = leftSquare;
      left++;
    }else{
      sortedArray[index] = rightSquare;
      right--;
    }
    index--;
  }
  return sortedArray;
}
