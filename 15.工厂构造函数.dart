class Square extends Shape {}

class Circle extends Shape {}

// 工厂构造方法
class Shape {
  Shape();
  // 工厂构造函数中不能使用this
  // 需要明确的返回一个对象
  factory Shape.formTypeName(String typeName) {
    if (typeName == "Square") {
      return Square();
    } else if (typeName == "Circle") {
      return Circle();
    } else {
      throw Error();
    }
  }
}

void main(List<String> args) {
  final s1 = Shape.formTypeName('Circle');
  final s2 = Shape.formTypeName('Square');
  print('s1: $s1, s2: $s2');
}
