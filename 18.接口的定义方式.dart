void main(List<String> args) {
  final c = C();
  c.printA();
  c.printB();
}
// 通过接口可以规范一类事物的功能
// dart中，默认情况下所有的类都是接口
// 接口
abstract class A {
  late String name;
  printA();
}

abstract class B {
  printB();
}

// 可以实现多个接口，解决了继承只能继承一个，可以实现抽象类，也可以实现普通类
// 使用implement的时候必须重写接口中的所有成员方法
// 使用implement的时候必须强制为所有成员变量提供get方法
class C implements B, A {
  @override
  late String name;

  @override
  printA() {
    print('implements printA');
    // throw UnimplementedError();
  }

  @override
  printB() {
    print('implements printB');
    // throw UnimplementedError();
  }
}
