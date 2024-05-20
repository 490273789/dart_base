import 'dart:io';
import 'dart:isolate';

void main() {
  print("程序运行开始");
  doSomethingInBackground(3);
  doSomethingInBackground(5);
  print("main运行结束");
}

doSomethingInBackground(int seconds) async {
  print('异步函数');
  String result = await doSomething(seconds);
  print(result);
}

Future<String> doSomething(int seconds) async {
  print('Future');
  final port = ReceivePort();
  // 创建自定义的isolate
  await Isolate.spawn(longTimeJob, [port.sendPort, seconds]);
  return await port.first;
}

void longTimeJob(List data) {
  sleep(Duration(seconds: data[1]));
  Isolate.exit(data[0], "3 seconds passed");
}
