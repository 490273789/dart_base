void main(List<String> args) {
  // 在dart中任何一个文件都是一个库，即使你没有使用关键字library

  // 使用import语句来导入一个库，后面跟一个字符串形式的uri来指定要引入的库
  // 常见的有三中形式
  // 1. 导入标准库
  // import 'dart:io';
  // 2. 使用相对路径导入
  // import '2.String.dart';
  // 3. Pub包管理工具管理的一些库，包括自己配置以及一些第三方库，常使用前缀package
  // import 'package:flutter/material.dart

  // 只导入库的部分功能用 show
  // import '2.String.dart' show Student, Person;
  // 隐藏库的部分功能用 hidden
  // import '2.String.dart' hidden Student, Person;

  //  使用as来定义命名空间
  // import '2.String.dart' as stu;

  // 库的拆分
  // 1. 使用part（官方已经不建议使用了）

  // 2. 使用export
  //  在汇总文件中 export '2.String.dart'

  // 常用的内置库
  // dart:io 服务器应用程序的文件，HTTP和其他I/O的支持，此库基于浏览器的应用程序中不起作用，默认情况下不会启用此库。
  // dart:core 每个dart程序的内置类型，集合其他核心库的功能，默认情况下会导入此库
  // dart:math 数字常数和函数
  // dart:convert 用于在不同数据表示之间进行转换的编码器和解码器，包括JSON和UTF-8。
  // dart:typed_data 有效处理固定大小数据的列表，无符号8字节整数

  // 创建自定义库
}
