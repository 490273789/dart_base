import 'dart:io';

// import 'package:path/path.dart' as path;
void main(List<String> args) {
  doTask1();
  doTask2();
  doTask3();
}

void doTask1() {
  print('do task 1');
}

// void doTask2() {
//   print('start task 2 ~');
//   String path = '${Directory.current.path}/file/test.txt';
//   print('path: $path');
//   File file = File(path);
//   print('start read file ~');
//   // 异步读取
//   file.readAsString().then((value) {
//     print('read file end ~');
//     print('读取内容：$value');
//   });
// }

void doTask2() async {
  print('start task 2 ~');
  String path = '${Directory.current.path}/file/test.txt';
  print('path: $path');
  File file = File(path);
  print('start read file ~');
  // 异步读取
  String content = await file.readAsString();
  print('read file end ~');
  print('读取内容：$content');
}

void doTask3() {
  print('do task 3');
}
