// 1、Number和String之间的转换
// Number转String toString()
// String转Number parse()

void main(List<String> args) {
  // String转int
  int one = int.parse('1');
  print('String to int: $one');

  // String转double
  double onePointOne = double.parse('1.1');
  print('String to double: $onePointOne');

  // int转String
  String oneAsString = 1.toString();
  print('int to String: $oneAsString');

  // double转String
  String piAsString = 3.1415926.toString();
  String piAsStringFix = 3.1415926.toStringAsFixed(2);
  print('double to string: $piAsString');
  print('double to string fixed: $piAsStringFix');
}
