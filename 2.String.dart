void main(List<String> args) {
  // 字符串用的是UTF-16代码单元，符文用的是UTF-32代码单元序列
  // 字符串的值可以在使用单引号、双引号、三引号
  // 1. 字符串的定义
  print('---字符串的定义---');
  String name = 'wsn';
  print('name: $name');

  // 三个单引号或者三个双引号，字符串可换行
  String text = """
  this is text1
  this is text2
  this is text3
""";
  print('text: $text');

  // 字符串模板
  // 字符串中使用${}来嵌入变量，如果是单个变量则可以省略花括号
  print('---字符串模板---');
  String firstName = 'sn';
  print("${firstName}w");
  print(firstName + "w");

  // 字符串属性
  print('---字符串上的属性---');
  String str = 'Wangshaonan1993';
  // codeUnits: 返回此字符串的所有UTF-16代码单元
  print('codeUnits: ${str.codeUnits}');
  // isEmpty: 如果字符串为空则返回true
  print('isEmpty: ${str.isEmpty}');
  print('isNotEmpty: ${str.isNotEmpty}');
  // length: 返回字符串的长度，包括空格、制表符、换行符
  print('length: ${str.length}');

  // 字符串上的方法
  print('---字符串上的方法---');
  String str1 = ' Wang Shaonan 1993 ';
  // 通过索引获取字符串的某一位
  print('str1[3]: ${str1[3]}');
  // substring() 返回此字符串的子字符串，字符串从startIndex延伸到endIndex，exclusive
  print('substring: ${str1.substring(14, str1.length - 2)}');
  // toLowerCase() 将字符串中的所有字符转换为小写
  print('toLowerCase: ${str1.toLowerCase()}');
  // toUpperCase() 将字符串中的所有字符转换为大写
  print('toUpperCase: ${str1.toUpperCase()}');
  // trim() 返回没有任何前导和尾随空格的字符串
  print('trim: ${str1.trim()}');
  // trimLeft()  trimRight() 返回值为处理完成后的字符串

  // 以下三个方法返回bool类型
  // startsWith() 字符串是否以什么开头
  print('startsWith: ${str1.startsWith(' ')}');
  // endsWith() 字符串是否以什么结尾
  print('endsWith: ${str1.endsWith('w')}');
  // contains() 字符串是否包含什么
  print('contains: ${str1.contains('1993')}');
  // compareTo() 将此字符串对象与另一个对象比较

  // replaceAll() 用给定的值替换与指定模式匹配的所有子字符串
  print('replaceAll: ${str1.replaceAll(' ', '_')}');
  // split() 在指定分隔符的匹配处拆分字符串并返回子字符串列表
  print('split: ${str1.split(' ')}');

  // toString() 返回此对象的字符串表现形式
  // codeUnitAt() 返回给定索引处的16位UTF-16代码单元
  print('codeUnitAt(3): ${str1.codeUnitAt(3)}');
}
