/*
  Check if two strings are anagrams
*/

void checkAnagramF(String str1, String str2) {
  // "listen";
  // "silent";

  if (str1.length != str2.length) {
    return;
  }

  Map<String, int> freqMap = {};

  for (int i = 0; i < str1.length; i++) {
    if (freqMap.containsKey(str1[i])) {
      freqMap[str1[i]] = freqMap[str1[i]]! + 1;
    } else {
      freqMap[str1[i]] = 1;
    }
  }

  for (int i = 0; i < str2.length; i++) {
    if (freqMap.containsKey(str2[i])) {
      freqMap[str2[i]] = freqMap[str2[i]]! - 1;
    } else {
      freqMap[str2[i]] = 1;
    }
  }

  freqMap.forEach((key, value) {
    if (value != 0) {
      print('Not an anagram');
    }
    return;
  });

  print(' an anagram');

  // TC O(n)
  // SC O(k)
}
