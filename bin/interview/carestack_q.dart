// input - This weekend is going to be fun
// output - fun be to going is weekend this

void reverseString(String str) {
  // final wordList = str.split(' ');
  List<String> wordList = [];
  String reverse = '';

  for (var i = 0; i < str.length; i++) {
    if (str[i] != ' ') {
      reverse += str[i];
    } else {
      wordList.add(reverse);
      reverse = '';
    }
  }
  wordList.add(reverse);
  reverse = '';

  final len = wordList.length; // 6

  String reversedSentence = '';

  for (var i = len - 1; i >= 0; i--) {
    reversedSentence += '${wordList[i]} ';
  }

  print('$reversedSentence ');

  // TC = O(n)
  // SC = O(1)
}
