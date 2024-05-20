void main(List<String> args) {
  // dart中函数是第一公民
  // 可以传给变量，可以当函数的参数，可以做另外函数的返回值
  // 可选位置参数
  void optionalParams(String name, [int? age]) {
    print('name: $name');
    print('age: $age');
  }

  ;

  optionalParams('wsn');

  // 可选命名参数
  void optionalNamedParameters(String name, {required int age, String? sex}) {
    print('optionalNamedParameters函数执行：');
    print('name: $name');
    print('age: $age');
    print('sex: $sex');
  }

  ;

  optionalNamedParameters('wsz', age: 19);
  optionalNamedParameters('wsz', age: 18);
  optionalNamedParameters('wsz', age: 18, sex: '男');

  // 带有默认参数的可选命名参数
  void optionalNamedParametersWithDefaultValue(String name,
      {int age = 1, String sex = '女'}) {
    print('optionalNamedParameters函数执行：');
    print('name: $name');
    print('age: $age');
    print('sex: $sex');
  }

  ;

  optionalNamedParametersWithDefaultValue('wsr');
  optionalNamedParametersWithDefaultValue('wsr', age: 18);
  optionalNamedParametersWithDefaultValue('wsr', age: 18, sex: '男');

  // 注：函数的所有可选参数必须要在必须函数之后

  // 匿名函数
  List<int> list = [1, 2, 3, 4];
  // forEach(() => ) 的参数就是匿名函数
  list.forEach((int element) => print('element: $element'));

  // 闭包
  // 全局变量、局部变量、作用域都和js差不多

  // 函数不显示的写return，则默认返回null

  // 自执行函数
  (x, y) {
    print('我是自执行函数: $x $y');
  }(1, 2);

  // 闭包演示
  var add = () {
    int count = 0;
    return () {
      return ++count;
    };
  }();

  print('add执行：${add()}');
  print('add执行：${add()}');
  print('add执行：${add()}');
}
