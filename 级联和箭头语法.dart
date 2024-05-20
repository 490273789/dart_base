void main() {
  // 箭头语法
  var result = (String str) => str.isEmpty;
  print("result: ${result('qwe')}");

  // 可选参数 []
  int sumUp(int a, [int b = 0, int? c]) {
    int sum = a;
    sum += b;
    if (c != null) sum += c;
    return sum;
  }

  print("sumUp: ${sumUp(1, 2, 3)}");

  // 命名参数 {}
  // 可选命名参数和可选位置参数不能同时在一个函数中使用
  void printName(String firstName, String lastName,
      {String middleName = '', String? nickName}) {
    print("$firstName $middleName $lastName ${nickName ?? ''}");
  }

  ;

  printName('w', 'n', middleName: 's', nickName: 'z');
  printName(middleName: 's', 'w', 'n');

  // 级联 ..
  // obj.print() 这个调用函数返回的是print的返回结果
  // obj..print() 级联的调用返回的是obj的引用
  // 类似jQuery中的链式调用，没次返回的都是$
}
