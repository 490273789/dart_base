void main(List<String> args) {
  // int 必须是整型
  print('---int 必须是整型---');
  int num1 = 1;
  int num2 = 0xDEADBEEF; //16进制
  print('int num1: $num1');
  print('int num2: $num2');

  // double 64位双精度浮点型，可以是整型，也可以是浮点型
  // 2.1开始必要时整数会自动转换为双精度
  double num3 = 1.66;
  double num4 = 1.42e5;
  num3 = 2;
  print('double num3: $num3');
  print('double num4: $num4');

  // 将整形转换为其他进制
  print('---将整形转换为其他进制---');
  int value1 = 2022;
  print('2022转化为二进制: ${value1.toRadixString(2)}');

  // 数字常用的方法
  print('---数字常用的方法---');
  num n = 3.14;
  print('绝对值：${n.abs()}');
  print('向上取整：${n.ceil()}');
  print('向下取整：${n.floor()}');
  print('四舍五入取整：${n.round()}');
  print('去除小数部位取整：${n.truncate()}');
  print('四舍五入，保留几位小数，返回字符串：${n.toStringAsFixed(1)}');

  // double 和 int中定义的parse方法
  print('---double 和 int中定义的parse方法---');
  print('double 和 int中定义的parse方法');
  print('double.parse(): ${double.parse('3.3')}');
  print('int.parse(): ${int.parse('10')}');

  // int的一些关于进制的方法，可以把整型转化为其他进制，以字符串的形式输出
  print('---int的一些关于进制的方法，可以把整型转化为其他进制，以字符串的形式输出---');
  int m = 2023;
  print('转化为2进制：${m.toRadixString(2)}');
  print('转化为16进制：${m.toRadixString(16)}');

  // int解析字符串，可以指定字符串的进制
  print('---int解析字符串，可以指定字符串的进制---');
  print('16进制字符串"7e6"转int：${int.parse('7e6', radix: 16)}');
  print('32进制的字符串"nan"转int：${int.parse('nan', radix: 36)}');
}
