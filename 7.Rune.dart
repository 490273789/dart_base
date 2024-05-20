void main(List<String> args) {
  // Rune用来表示字符串中的UTF-32编码字符
  // Unicode定义了一个全球的书写系统编码，系统中使用的所有字母，数字和符号都是对应唯一的数值编码。由于Dart字符串是一系列UTF-16编码单元，因此要在字符串中表示32为Unicode值需要特殊的语法支持
  // 表示Unicode编码的常用方法是，\uXXXX，这里XXXX是一个4位的16进制，例如：心形符号是\u2665，对特殊的非4个数值的情况，把编码值放到大括号即可（\u{1f600}
  var clapping = '\u{1f44f}';
  print('clapping: $clapping');

  Runes input = new Runes('\u2665 \u{1f605} \u{1f47b} \u{1f596} \u{1f44d}');
  print('input: ${new String.fromCharCodes(input)}');
}
