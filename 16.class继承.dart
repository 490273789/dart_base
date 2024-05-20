void main(List<String> args) {
  final my = My('wsn', 18);
  my.eating();
  print('my: $my');
}

class Person {
  int? age;

  Person(this.age);

  void eating() {
    print('我是Person中的eating方法');
  }
}

class My extends Person {
  String? name;

  My(this.name, int age) : super(age);

  @override
  void eating() {
    // 注：重写方法时函数的参数数量和类型必须匹配
    // 需要可写，通过super调用继承的method1方法
    // super可以调用父类的变量、属性和方法
    super.eating();
    print('我重写了继承的eating方法');
  }

  @override
  String toString() {
    print('name: $name, age: $age');
    return '${super.toString()}, name: $name, age: $age';
  }
}
