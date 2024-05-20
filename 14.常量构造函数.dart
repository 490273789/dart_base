// const 构造方法
// 你的类生成的对象永远都不会改变
// 类中的成员变量需要使用final来定义
class ImmutablePoint {
  // 静态方法由类名调用
  static const ImmutablePoint origin = ImmutablePoint(0, 0);
  final int x;
  final int y;
  const ImmutablePoint(this.x, this.y);
}

void main(List<String> args) {
  // 静态方法调用
  final immutablePoint2 = ImmutablePoint.origin;
  print("immutablePoint2.y: ${immutablePoint2.y}");

  // 用const 传入的参数相同调用多次只会生成一个实例
  final immutablePoint3 = const ImmutablePoint(2, 2);
  final immutablePoint4 = const ImmutablePoint(2, 2);
  print('用const：${immutablePoint3 == immutablePoint4}');

  // identical 检查两个引用是否指向同一个对象
  print('identical: ${identical(immutablePoint3, immutablePoint4)}');
}
