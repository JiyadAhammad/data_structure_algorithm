/*
  You are given an integer array height of length n. There are n vertical 
  lines drawn such that the two endpoints of the ith line are (i, 0) 
  and (i, height[i]).
  Find two lines that together with the x-axis form a container, 
  such that the container contains the most water.
  Return the maximum amount of water a container can store.
  Notice that you may not slant the container.

  Example 1:
  Input: height = [1,8,6,2,5,4,8,3,7]
  Output: 49
  Explanation: The above vertical lines are represented by array 
  [1,8,6,2,5,4,8,3,7]. In this case, the max area of water 
  (blue section) the container can contain is 49.

  Example 2:
  Input: height = [1,1]
  Output: 1
*/
import 'dart:math';

int maxArea(List<int> height) {
  if (height.isEmpty) {
    return 0;
  }

  int area = 0;
  int left = 0;
  int right = height.length - 1;

  while (left < right) {
    int base = right - left;
    int minHeight = height[left] > height[right] ? height[right] : height[left];

    // int newArea = base * minHeight;

    // if (newArea > area) {
    //   area = newArea;
    // }

    area = max(area, base * minHeight);

    if (height[left] > height[right]) {
      right--;
    } else {
      left++;
    }
  }

  return area;
}
