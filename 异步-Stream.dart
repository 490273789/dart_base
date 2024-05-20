import 'dart:async';
import 'dart:io';
// https://mirrors.aliyun.com/android.googlesource.com/
void main(List<String> args) {
  doTask2();
}
late StreamSubscription<List<int>> subscription;
int fileLength = 0;
int counter = 0;

void doTask2() async {
  String path = '${Directory.current.path}/file/test.txt';

  File file = File(path);
  fileLength = await file.length();
  print('start read file ~');
  Stream<List<int>> stream = file.openRead();
  // 返回订阅对象
  subscription = stream.listen(_onData, onDone: _onEnd);


}

void _onData(List<int> bytes) {
  counter += bytes.length;
  double process = counter * 100 / fileLength;
  DateTime time = DateTime.now();
  String timeStr = "[${time.hour}:${time.minute}:${time.second}:${time.millisecond}]";
  print('$timeStr${"=" * (process ~/ 2)}[${process.toStringAsFixed(2)}%]');
  if(process > 50) {
    subscription.cancel();
  }
}

void _onEnd() {
  print('file read end ~');
}