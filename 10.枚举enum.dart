enum Status { none, running, stopped, paused }
enum Status1 { none, running, stopped, paused }

void main(List<String> args) {
  // enum 枚举用于定义命名常量值
  print('Status.values: ${Status.values}');

  // 循环每一项
  Status.values
      .forEach((element) => print('value: $element, index: ${element.index}'));

  // 获取其中的一项
  print('Status.running: ${Status.running}, ${Status.running.index}');

  // 通过index获取其中的一项
  print('Status index: ${Status.values[1]}');
}
