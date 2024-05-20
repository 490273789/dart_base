void main(List<String> args) {
  // 普通传值
  // final classOne = MyClass( 90, 100);
  // 命名参数
  final classOne = MyClass(green: 90, blue: 100);
  // 可选参数
  // final classOne = MyClass(90, 100);
  print("classColor.red: ${classOne.green}");
  print("classOne.a: ${classOne.a}");
  print("classOne.type: ${classOne.type}");
}

class MyClass {
  // _开头为类的私有属性
  // 条件：需要把类单独抽离一个文件，通过import导入进来后私有属性才会生效
  int _a = 9;
  int? green;
  int? blue;

  // 构造函数，负责初始化类的属性
  // 1. 当我们没有明确的写构造函数的时候，会自动创建一个无参数的构造函数
  // MyClass() {}
  // 2. 自定义构造函数 - 普通传值
  // MyClass(this.red, this.green, this.blue);
  // 3. 自定义构造函数 - 命名参数，不给默认值需要写required
  MyClass({required this.green, this.blue = 0});
  // 4. 自定义构造函数 - 可选参数
  // MyClass([this.green = 0, this.blue = 0]);

  // 5. 可以写多个构造
  // MyClass.origin(String word) {
  //   assert(word.length >= 2);
  //   green = 100;
  //   blue = 200;
  // }
  MyClass.origin(String word)
      : assert(word.length >= 2),
        green = 100,
        blue = 200;

  //  重定向构造函数
  // 用来重定向到该类的另一个构造方法，重定向构造方法没有主体，他在(:)之后调用另一个构造方法
  MyClass.fromColor(int green) : this(green: green, blue: 0);

  // getter
  int get a => _a;

  // 计算属性
  bool get type => _a is String;

  // setter
  void set a(int value) {
    if (a >= 0) {
      _a = value;
      print("a: $value");
    }
  }
}
